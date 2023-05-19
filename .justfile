_default:
	@just --list --unsorted

clean:
	make clean
	rm -rf gimbals.mov

build:
	make build-gimbals.mov

rename:
	mkdir -p gimbals.mov
	for f in libav-*-gimbals.mov.*; do mv $f `echo $f | sed 's|libav-[.0-9]*-gimbals\.mov|gimbals.mov/libav|'`; done
	sed -i 's|libav-[.0-9]*-gimbals\.mov|libav|g' gimbals.mov/*.js
