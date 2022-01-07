
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; } ;
struct spufs_fs_context {int mode; int gid; int uid; } ;
struct inode {int * i_fop; int * i_op; int i_gid; int i_uid; } ;
struct fs_context {struct spufs_fs_context* fs_private; } ;
struct TYPE_2__ {int * i_ctx; } ;


 int ENODEV ;
 int ENOMEM ;
 TYPE_1__* SPUFS_I (struct inode*) ;
 int S_IFDIR ;
 int d_make_root (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 int spu_management_ops ;
 struct inode* spufs_new_inode (struct super_block*,int) ;

__attribute__((used)) static int spufs_create_root(struct super_block *sb, struct fs_context *fc)
{
 struct spufs_fs_context *ctx = fc->fs_private;
 struct inode *inode;

 if (!spu_management_ops)
  return -ENODEV;

 inode = spufs_new_inode(sb, S_IFDIR | ctx->mode);
 if (!inode)
  return -ENOMEM;

 inode->i_uid = ctx->uid;
 inode->i_gid = ctx->gid;
 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 SPUFS_I(inode)->i_ctx = ((void*)0);
 inc_nlink(inode);

 sb->s_root = d_make_root(inode);
 if (!sb->s_root)
  return -ENOMEM;
 return 0;
}
