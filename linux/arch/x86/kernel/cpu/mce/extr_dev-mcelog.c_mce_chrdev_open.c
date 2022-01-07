
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int EBUSY ;
 int O_EXCL ;
 scalar_t__ mce_chrdev_open_count ;
 int mce_chrdev_open_exclu ;
 int mce_chrdev_state_lock ;
 int nonseekable_open (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mce_chrdev_open(struct inode *inode, struct file *file)
{
 spin_lock(&mce_chrdev_state_lock);

 if (mce_chrdev_open_exclu ||
     (mce_chrdev_open_count && (file->f_flags & O_EXCL))) {
  spin_unlock(&mce_chrdev_state_lock);

  return -EBUSY;
 }

 if (file->f_flags & O_EXCL)
  mce_chrdev_open_exclu = 1;
 mce_chrdev_open_count++;

 spin_unlock(&mce_chrdev_state_lock);

 return nonseekable_open(inode, file);
}
