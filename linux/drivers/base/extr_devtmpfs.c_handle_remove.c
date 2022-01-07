
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; int mnt; } ;
struct kstat {int mode; } ;
struct iattr {int ia_mode; int ia_valid; int ia_gid; int ia_uid; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int AT_STATX_SYNC_AS_STAT ;
 int ENOENT ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int STATX_MODE ;
 int STATX_TYPE ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int delete_path (char const*) ;
 scalar_t__ dev_mynode (struct device*,int ,struct kstat*) ;
 int dput (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* kern_path_locked (char const*,struct path*) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 int path_put (struct path*) ;
 scalar_t__ strchr (char const*,char) ;
 int vfs_getattr (struct path*,struct kstat*,int,int ) ;
 int vfs_unlink (int ,struct dentry*,int *) ;

__attribute__((used)) static int handle_remove(const char *nodename, struct device *dev)
{
 struct path parent;
 struct dentry *dentry;
 int deleted = 0;
 int err;

 dentry = kern_path_locked(nodename, &parent);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);

 if (d_really_is_positive(dentry)) {
  struct kstat stat;
  struct path p = {.mnt = parent.mnt, .dentry = dentry};
  err = vfs_getattr(&p, &stat, STATX_TYPE | STATX_MODE,
      AT_STATX_SYNC_AS_STAT);
  if (!err && dev_mynode(dev, d_inode(dentry), &stat)) {
   struct iattr newattrs;




   newattrs.ia_uid = GLOBAL_ROOT_UID;
   newattrs.ia_gid = GLOBAL_ROOT_GID;
   newattrs.ia_mode = stat.mode & ~0777;
   newattrs.ia_valid =
    ATTR_UID|ATTR_GID|ATTR_MODE;
   inode_lock(d_inode(dentry));
   notify_change(dentry, &newattrs, ((void*)0));
   inode_unlock(d_inode(dentry));
   err = vfs_unlink(d_inode(parent.dentry), dentry, ((void*)0));
   if (!err || err == -ENOENT)
    deleted = 1;
  }
 } else {
  err = -ENOENT;
 }
 dput(dentry);
 inode_unlock(d_inode(parent.dentry));

 path_put(&parent);
 if (deleted && strchr(nodename, '/'))
  delete_path(nodename);
 return err;
}
