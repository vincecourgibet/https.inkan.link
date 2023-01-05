#!/bin/bash -e


declare -a res=(16  32);
for r in "${res[@]}" 
do 
/Applications/Inkscape.app/Contents/MacOS/inkscape  -o favicon-${r}x${r}.png -w $r favicon.svg 
done

  
cp -f favicon.svg safari-pinned-tab.svg

/Applications/Inkscape.app/Contents/MacOS/inkscape  -o  android-chrome-192x192.png -w 192 favicon.svg 
/Applications/Inkscape.app/Contents/MacOS/inkscape  -o  mstile-150x150.png -w 150 favicon.svg 
/Applications/Inkscape.app/Contents/MacOS/inkscape  -o  android-chrome-256x256.png  -w 256 favicon.svg 
/Applications/Inkscape.app/Contents/MacOS/inkscape  -o  apple-touch-icon.png    -w 180 favicon.svg 
