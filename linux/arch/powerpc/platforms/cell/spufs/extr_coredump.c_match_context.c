
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int flags; } ;
struct file {int * f_op; } ;
struct TYPE_2__ {struct spu_context* i_ctx; } ;


 TYPE_1__* SPUFS_I (int ) ;
 int SPU_CREATE_NOSCHED ;
 int file_inode (struct file*) ;
 int spufs_context_fops ;

__attribute__((used)) static int match_context(const void *v, struct file *file, unsigned fd)
{
 struct spu_context *ctx;
 if (file->f_op != &spufs_context_fops)
  return 0;
 ctx = SPUFS_I(file_inode(file))->i_ctx;
 if (ctx->flags & SPU_CREATE_NOSCHED)
  return 0;
 return fd + 1;
}
