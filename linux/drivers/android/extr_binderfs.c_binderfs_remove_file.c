
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_parent; } ;


 int d_delete (struct dentry*) ;
 struct inode* d_inode (int ) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

void binderfs_remove_file(struct dentry *dentry)
{
 struct inode *parent_inode;

 parent_inode = d_inode(dentry->d_parent);
 inode_lock(parent_inode);
 if (simple_positive(dentry)) {
  dget(dentry);
  simple_unlink(parent_inode, dentry);
  d_delete(dentry);
  dput(dentry);
 }
 inode_unlock(parent_inode);
}
