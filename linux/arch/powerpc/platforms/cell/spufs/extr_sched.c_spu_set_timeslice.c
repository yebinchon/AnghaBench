
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {scalar_t__ prio; void* time_slice; } ;


 int DEF_SPU_TIMESLICE ;
 scalar_t__ NORMAL_PRIO ;
 void* SCALE_PRIO (int,scalar_t__) ;

void spu_set_timeslice(struct spu_context *ctx)
{
 if (ctx->prio < NORMAL_PRIO)
  ctx->time_slice = SCALE_PRIO(DEF_SPU_TIMESLICE * 4, ctx->prio);
 else
  ctx->time_slice = SCALE_PRIO(DEF_SPU_TIMESLICE, ctx->prio);
}
