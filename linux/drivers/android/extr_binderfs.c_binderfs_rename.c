
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 scalar_t__ is_binderfs_control_device (struct dentry*) ;
 int simple_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;

__attribute__((used)) static int binderfs_rename(struct inode *old_dir, struct dentry *old_dentry,
      struct inode *new_dir, struct dentry *new_dentry,
      unsigned int flags)
{
 if (is_binderfs_control_device(old_dentry) ||
     is_binderfs_control_device(new_dentry))
  return -EPERM;

 return simple_rename(old_dir, old_dentry, new_dir, new_dentry, flags);
}
