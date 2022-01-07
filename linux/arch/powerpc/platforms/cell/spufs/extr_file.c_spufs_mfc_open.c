
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spufs_inode_info {int i_openers; struct spu_context* i_ctx; } ;
struct spu_context {scalar_t__ owner; int mapping_lock; int mfc; } ;
struct inode {int i_mapping; int i_count; } ;
struct file {struct spu_context* private_data; } ;
struct TYPE_2__ {scalar_t__ mm; } ;


 int EBUSY ;
 int EINVAL ;
 struct spufs_inode_info* SPUFS_I (struct inode*) ;
 int atomic_read (int *) ;
 TYPE_1__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int spufs_mfc_open(struct inode *inode, struct file *file)
{
 struct spufs_inode_info *i = SPUFS_I(inode);
 struct spu_context *ctx = i->i_ctx;


 if (ctx->owner != current->mm)
  return -EINVAL;

 if (atomic_read(&inode->i_count) != 1)
  return -EBUSY;

 mutex_lock(&ctx->mapping_lock);
 file->private_data = ctx;
 if (!i->i_openers++)
  ctx->mfc = inode->i_mapping;
 mutex_unlock(&ctx->mapping_lock);
 return nonseekable_open(inode, file);
}
