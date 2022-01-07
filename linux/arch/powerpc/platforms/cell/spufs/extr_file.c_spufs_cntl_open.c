
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_inode_info {int i_openers; struct spu_context* i_ctx; } ;
struct spu_context {int mapping_lock; int cntl; } ;
struct inode {int i_mapping; } ;
struct file {struct spu_context* private_data; } ;


 struct spufs_inode_info* SPUFS_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_attr_open (struct inode*,struct file*,int ,int ,char*) ;
 int spufs_cntl_get ;
 int spufs_cntl_set ;

__attribute__((used)) static int spufs_cntl_open(struct inode *inode, struct file *file)
{
 struct spufs_inode_info *i = SPUFS_I(inode);
 struct spu_context *ctx = i->i_ctx;

 mutex_lock(&ctx->mapping_lock);
 file->private_data = ctx;
 if (!i->i_openers++)
  ctx->cntl = inode->i_mapping;
 mutex_unlock(&ctx->mapping_lock);
 return simple_attr_open(inode, file, spufs_cntl_get,
     spufs_cntl_set, "0x%08lx");
}
