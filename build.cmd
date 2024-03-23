@echo off
cd /d "%~dp0"

md .bin
md .cmake

cd .cmake

cmake -G "Unix Makefiles" -DCMAKE_RC_COMPILER=windres -DCMAKE_PREFIX_PATH="./.bin" ..
make -j4 
make DESTDIR="../.bin" install