
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {scalar_t__ state; int sched_flags; } ;


 int SPU_SCHED_WAS_ACTIVE ;
 scalar_t__ SPU_STATE_SAVED ;
 int set_bit (int ,int *) ;
 int spu_acquire (struct spu_context*) ;
 int spu_acquire_saved__enter ;
 int spu_context_nospu_trace (int ,struct spu_context*) ;
 int spu_deactivate (struct spu_context*) ;

int spu_acquire_saved(struct spu_context *ctx)
{
 int ret;

 spu_context_nospu_trace(spu_acquire_saved__enter, ctx);

 ret = spu_acquire(ctx);
 if (ret)
  return ret;

 if (ctx->state != SPU_STATE_SAVED) {
  set_bit(SPU_SCHED_WAS_ACTIVE, &ctx->sched_flags);
  spu_deactivate(ctx);
 }

 return 0;
}
