
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int * i_private; } ;


 int ENOENT ;
 int EPERM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_unlock (TYPE_1__*) ;
 struct dentry* kern_path_locked (char const*,struct path*) ;
 int path_put (struct path*) ;
 int thread ;
 int vfs_rmdir (TYPE_1__*,struct dentry*) ;

__attribute__((used)) static int dev_rmdir(const char *name)
{
 struct path parent;
 struct dentry *dentry;
 int err;

 dentry = kern_path_locked(name, &parent);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);
 if (d_really_is_positive(dentry)) {
  if (d_inode(dentry)->i_private == &thread)
   err = vfs_rmdir(d_inode(parent.dentry), dentry);
  else
   err = -EPERM;
 } else {
  err = -ENOENT;
 }
 dput(dentry);
 inode_unlock(d_inode(parent.dentry));
 path_put(&parent);
 return err;
}
