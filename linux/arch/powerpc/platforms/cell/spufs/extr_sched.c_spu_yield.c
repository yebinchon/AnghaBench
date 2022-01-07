
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int flags; int state_mutex; } ;


 int MAX_PRIO ;
 int SPU_CREATE_NOSCHED ;
 int __spu_deactivate (struct spu_context*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spu_context_nospu_trace (int ,struct spu_context*) ;
 int spu_yield__enter ;

void spu_yield(struct spu_context *ctx)
{
 spu_context_nospu_trace(spu_yield__enter, ctx);
 if (!(ctx->flags & SPU_CREATE_NOSCHED)) {
  mutex_lock(&ctx->state_mutex);
  __spu_deactivate(ctx, 0, MAX_PRIO);
  mutex_unlock(&ctx->state_mutex);
 }
}
