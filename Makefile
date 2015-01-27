.PHONY: all install uninstall clean

all: setup.data
	ocaml setup.ml -build

setup.ml:
	oasis setup

setup.data: setup.ml
	ocaml setup.ml -configure

install:
	ocaml setup.ml -install

uninstall:
	ocaml setup.ml -uninstall

clean:
	ocaml setup.ml -clean
	find . -name "*~" | xargs rm -f

