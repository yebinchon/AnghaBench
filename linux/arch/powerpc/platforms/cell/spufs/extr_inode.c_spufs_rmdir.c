
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_ctx; } ;


 TYPE_1__* SPUFS_I (int ) ;
 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int simple_rmdir (struct inode*,struct dentry*) ;
 int spu_forget (int ) ;
 int spufs_prune_dir (struct dentry*) ;

__attribute__((used)) static int spufs_rmdir(struct inode *parent, struct dentry *dir)
{

 int res;
 spufs_prune_dir(dir);
 d_drop(dir);
 res = simple_rmdir(parent, dir);

 spu_forget(SPUFS_I(d_inode(dir))->i_ctx);
 return res;
}
