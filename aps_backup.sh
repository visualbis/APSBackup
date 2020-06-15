./mongodump --uri=mongodb://$1:$2@ds249092.mlab.com:49092/vbx_current;
rm -r ./vbx_current;
cp -r dump/* .;
rm -r dump;
git add .;
now=$(date);
git commit -m"$now";
git push origin master;
