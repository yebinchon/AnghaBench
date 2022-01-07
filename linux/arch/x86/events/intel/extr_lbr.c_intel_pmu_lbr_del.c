
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct x86_perf_task_context {int lbr_callstack_users; } ;
struct TYPE_6__ {scalar_t__ precise_ip; } ;
struct perf_event {TYPE_3__* ctx; TYPE_2__ attr; } ;
struct cpu_hw_events {scalar_t__ lbr_pebs_users; scalar_t__ lbr_users; int br_sel; } ;
struct TYPE_5__ {scalar_t__ pebs_baseline; } ;
struct TYPE_8__ {TYPE_1__ intel_cap; int lbr_nr; } ;
struct TYPE_7__ {int pmu; struct x86_perf_task_context* task_ctx_data; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ branch_user_callstack (int ) ;
 int cpu_hw_events ;
 int perf_sched_cb_dec (int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_4__ x86_pmu ;

void intel_pmu_lbr_del(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct x86_perf_task_context *task_ctx;

 if (!x86_pmu.lbr_nr)
  return;

 if (branch_user_callstack(cpuc->br_sel) &&
     event->ctx->task_ctx_data) {
  task_ctx = event->ctx->task_ctx_data;
  task_ctx->lbr_callstack_users--;
 }

 if (x86_pmu.intel_cap.pebs_baseline && event->attr.precise_ip > 0)
  cpuc->lbr_pebs_users--;
 cpuc->lbr_users--;
 WARN_ON_ONCE(cpuc->lbr_users < 0);
 WARN_ON_ONCE(cpuc->lbr_pebs_users < 0);
 perf_sched_cb_dec(event->ctx->pmu);
}
