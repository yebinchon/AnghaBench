
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_rmdir (int ,struct dentry*) ;
 int simple_unlink (int ,struct dentry*) ;

__attribute__((used)) static void hypfs_remove(struct dentry *dentry)
{
 struct dentry *parent;

 parent = dentry->d_parent;
 inode_lock(d_inode(parent));
 if (simple_positive(dentry)) {
  if (d_is_dir(dentry))
   simple_rmdir(d_inode(parent), dentry);
  else
   simple_unlink(d_inode(parent), dentry);
 }
 d_drop(dentry);
 dput(dentry);
 inode_unlock(d_inode(parent));
}
