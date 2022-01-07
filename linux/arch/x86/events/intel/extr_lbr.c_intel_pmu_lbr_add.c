
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct x86_perf_task_context {int lbr_callstack_users; } ;
struct TYPE_10__ {scalar_t__ precise_ip; } ;
struct TYPE_7__ {int reg; } ;
struct TYPE_8__ {TYPE_1__ branch_reg; } ;
struct perf_event {int total_time_running; TYPE_5__* ctx; TYPE_4__ attr; TYPE_2__ hw; } ;
struct cpu_hw_events {int lbr_users; int lbr_pebs_users; int br_sel; } ;
struct TYPE_9__ {scalar_t__ pebs_baseline; } ;
struct TYPE_12__ {TYPE_3__ intel_cap; int lbr_nr; } ;
struct TYPE_11__ {int pmu; struct x86_perf_task_context* task_ctx_data; } ;


 scalar_t__ branch_user_callstack (int ) ;
 int cpu_hw_events ;
 int intel_pmu_lbr_reset () ;
 int perf_sched_cb_inc (int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_6__ x86_pmu ;

void intel_pmu_lbr_add(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct x86_perf_task_context *task_ctx;

 if (!x86_pmu.lbr_nr)
  return;

 cpuc->br_sel = event->hw.branch_reg.reg;

 if (branch_user_callstack(cpuc->br_sel) && event->ctx->task_ctx_data) {
  task_ctx = event->ctx->task_ctx_data;
  task_ctx->lbr_callstack_users++;
 }
 if (x86_pmu.intel_cap.pebs_baseline && event->attr.precise_ip > 0)
  cpuc->lbr_pebs_users++;
 perf_sched_cb_inc(event->ctx->pmu);
 if (!cpuc->lbr_users++ && !event->total_time_running)
  intel_pmu_lbr_reset();
}
