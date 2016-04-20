echo "Creating links..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for f in $(find . -maxdepth 1 -type f -exec basename {} \;| grep -v "\.git" | grep "\..*") 
do
  rm ~/$f
  ln -s $DIR/$f ~/$f
done
