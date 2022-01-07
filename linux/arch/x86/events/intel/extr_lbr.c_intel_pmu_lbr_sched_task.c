
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_perf_task_context {int dummy; } ;
struct perf_event_context {struct x86_perf_task_context* task_ctx_data; } ;
struct cpu_hw_events {int lbr_users; } ;


 int __intel_pmu_lbr_restore (struct x86_perf_task_context*) ;
 int __intel_pmu_lbr_save (struct x86_perf_task_context*) ;
 int cpu_hw_events ;
 int intel_pmu_lbr_reset () ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

void intel_pmu_lbr_sched_task(struct perf_event_context *ctx, bool sched_in)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct x86_perf_task_context *task_ctx;

 if (!cpuc->lbr_users)
  return;






 task_ctx = ctx ? ctx->task_ctx_data : ((void*)0);
 if (task_ctx) {
  if (sched_in)
   __intel_pmu_lbr_restore(task_ctx);
  else
   __intel_pmu_lbr_save(task_ctx);
  return;
 }







 if (sched_in)
  intel_pmu_lbr_reset();
}
