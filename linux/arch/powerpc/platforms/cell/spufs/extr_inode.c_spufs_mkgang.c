
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct spu_gang {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_gid; int i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct spu_gang* i_gang; int * i_ctx; } ;


 int ENOMEM ;
 int ENOSPC ;
 TYPE_1__* SPUFS_I (struct inode*) ;
 int S_IFDIR ;
 int S_ISGID ;
 struct spu_gang* alloc_spu_gang () ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 struct inode* spufs_new_inode (int ,int) ;

__attribute__((used)) static int
spufs_mkgang(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 int ret;
 struct inode *inode;
 struct spu_gang *gang;

 ret = -ENOSPC;
 inode = spufs_new_inode(dir->i_sb, mode | S_IFDIR);
 if (!inode)
  goto out;

 ret = 0;
 if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  inode->i_mode &= S_ISGID;
 }
 gang = alloc_spu_gang();
 SPUFS_I(inode)->i_ctx = ((void*)0);
 SPUFS_I(inode)->i_gang = gang;
 if (!gang) {
  ret = -ENOMEM;
  goto out_iput;
 }

 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;

 d_instantiate(dentry, inode);
 inc_nlink(dir);
 inc_nlink(d_inode(dentry));
 return ret;

out_iput:
 iput(inode);
out:
 return ret;
}
