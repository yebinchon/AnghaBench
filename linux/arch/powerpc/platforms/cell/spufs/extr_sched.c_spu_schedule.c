
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {scalar_t__ state; int state_mutex; } ;
struct spu {int dummy; } ;


 scalar_t__ SPU_STATE_SAVED ;
 int __spu_schedule (struct spu*,struct spu_context*) ;
 int mutex_lock (int *) ;
 int spu_release (struct spu_context*) ;

__attribute__((used)) static void spu_schedule(struct spu *spu, struct spu_context *ctx)
{


 mutex_lock(&ctx->state_mutex);
 if (ctx->state == SPU_STATE_SAVED)
  __spu_schedule(spu, ctx);
 spu_release(ctx);
}
