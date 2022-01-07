
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {int sched_flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* npc_read ) (struct spu_context*) ;int (* status_read ) (struct spu_context*) ;} ;


 int ERESTARTSYS ;
 int SPU_SCHED_SPU_RUN ;
 int SPU_UTIL_IDLE_LOADED ;
 int SWITCH_LOG_EXIT ;
 int clear_bit (int ,int *) ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int spu_del_from_rq (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 int spu_switch_log_notify (int *,struct spu_context*,int ,int ) ;
 int spuctx_switch_state (struct spu_context*,int ) ;
 int stub1 (struct spu_context*) ;
 int stub2 (struct spu_context*) ;

__attribute__((used)) static int spu_run_fini(struct spu_context *ctx, u32 *npc,
          u32 *status)
{
 int ret = 0;

 spu_del_from_rq(ctx);

 *status = ctx->ops->status_read(ctx);
 *npc = ctx->ops->npc_read(ctx);

 spuctx_switch_state(ctx, SPU_UTIL_IDLE_LOADED);
 clear_bit(SPU_SCHED_SPU_RUN, &ctx->sched_flags);
 spu_switch_log_notify(((void*)0), ctx, SWITCH_LOG_EXIT, *status);
 spu_release(ctx);

 if (signal_pending(current))
  ret = -ERESTARTSYS;

 return ret;
}
