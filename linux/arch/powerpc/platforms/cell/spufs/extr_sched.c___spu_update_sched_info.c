
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int last_ran; int cpus_allowed; int policy; int prio; int tid; int rq; } ;
struct TYPE_2__ {int cpus_ptr; int policy; int static_prio; int prio; int pid; } ;


 int BUG_ON (int) ;
 int cpumask_copy (int *,int ) ;
 TYPE_1__* current ;
 int list_empty (int *) ;
 int raw_smp_processor_id () ;
 scalar_t__ rt_prio (int ) ;

void __spu_update_sched_info(struct spu_context *ctx)
{




 BUG_ON(!list_empty(&ctx->rq));






 ctx->tid = current->pid;







 if (rt_prio(current->prio))
  ctx->prio = current->prio;
 else
  ctx->prio = current->static_prio;
 ctx->policy = current->policy;
 cpumask_copy(&ctx->cpus_allowed, current->cpus_ptr);


 ctx->last_ran = raw_smp_processor_id();
}
