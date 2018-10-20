#!/bin/bash

for p in properties/*; do
	echo "validating $p..."
	mcrl22lps -q assign.mcrl2| lps2pbes -f "$p" | pbes2bool
done
