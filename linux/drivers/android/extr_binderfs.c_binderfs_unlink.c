
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 scalar_t__ is_binderfs_control_device (struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int binderfs_unlink(struct inode *dir, struct dentry *dentry)
{
 if (is_binderfs_control_device(dentry))
  return -EPERM;

 return simple_unlink(dir, dentry);
}
