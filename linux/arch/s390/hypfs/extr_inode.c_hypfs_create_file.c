
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {char* i_private; int * i_fop; int * i_op; scalar_t__ i_size; } ;
struct dentry {int d_sb; } ;


 int BUG () ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int hypfs_file_ops ;
 struct inode* hypfs_make_inode (int ,int ) ;
 int inc_nlink (int ) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,scalar_t__) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct dentry *hypfs_create_file(struct dentry *parent, const char *name,
     char *data, umode_t mode)
{
 struct dentry *dentry;
 struct inode *inode;

 inode_lock(d_inode(parent));
 dentry = lookup_one_len(name, parent, strlen(name));
 if (IS_ERR(dentry)) {
  dentry = ERR_PTR(-ENOMEM);
  goto fail;
 }
 inode = hypfs_make_inode(parent->d_sb, mode);
 if (!inode) {
  dput(dentry);
  dentry = ERR_PTR(-ENOMEM);
  goto fail;
 }
 if (S_ISREG(mode)) {
  inode->i_fop = &hypfs_file_ops;
  if (data)
   inode->i_size = strlen(data);
  else
   inode->i_size = 0;
 } else if (S_ISDIR(mode)) {
  inode->i_op = &simple_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;
  inc_nlink(d_inode(parent));
 } else
  BUG();
 inode->i_private = data;
 d_instantiate(dentry, inode);
 dget(dentry);
fail:
 inode_unlock(d_inode(parent));
 return dentry;
}
