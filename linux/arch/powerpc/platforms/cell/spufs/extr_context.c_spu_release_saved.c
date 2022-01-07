
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {scalar_t__ state; int sched_flags; } ;


 int BUG_ON (int) ;
 int SPU_SCHED_SPU_RUN ;
 int SPU_SCHED_WAS_ACTIVE ;
 scalar_t__ SPU_STATE_SAVED ;
 int spu_activate (struct spu_context*,int ) ;
 int spu_release (struct spu_context*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void spu_release_saved(struct spu_context *ctx)
{
 BUG_ON(ctx->state != SPU_STATE_SAVED);

 if (test_and_clear_bit(SPU_SCHED_WAS_ACTIVE, &ctx->sched_flags) &&
   test_bit(SPU_SCHED_SPU_RUN, &ctx->sched_flags))
  spu_activate(ctx, 0);

 spu_release(ctx);
}
