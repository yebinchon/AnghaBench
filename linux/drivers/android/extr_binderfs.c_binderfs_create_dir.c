
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int * i_op; int * i_fop; struct super_block* i_sb; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFDIR ;
 struct dentry* binderfs_create_dentry (struct dentry*,char const*) ;
 struct inode* binderfs_make_inode (struct super_block*,int) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dput (struct dentry*) ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int set_nlink (struct inode*,int) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static struct dentry *binderfs_create_dir(struct dentry *parent,
       const char *name)
{
 struct dentry *dentry;
 struct inode *new_inode, *parent_inode;
 struct super_block *sb;

 parent_inode = d_inode(parent);
 inode_lock(parent_inode);

 dentry = binderfs_create_dentry(parent, name);
 if (IS_ERR(dentry))
  goto out;

 sb = parent_inode->i_sb;
 new_inode = binderfs_make_inode(sb, S_IFDIR | 0755);
 if (!new_inode) {
  dput(dentry);
  dentry = ERR_PTR(-ENOMEM);
  goto out;
 }

 new_inode->i_fop = &simple_dir_operations;
 new_inode->i_op = &simple_dir_inode_operations;

 set_nlink(new_inode, 2);
 d_instantiate(dentry, new_inode);
 inc_nlink(parent_inode);
 fsnotify_mkdir(parent_inode, dentry);

out:
 inode_unlock(parent_inode);
 return dentry;
}
