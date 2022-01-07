
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int wbox_wq; } ;
struct spu {struct spu_context* ctx; } ;


 int wake_up_all (int *) ;

void spufs_wbox_callback(struct spu *spu)
{
 struct spu_context *ctx = spu->ctx;

 if (ctx)
  wake_up_all(&ctx->wbox_wq);
}
