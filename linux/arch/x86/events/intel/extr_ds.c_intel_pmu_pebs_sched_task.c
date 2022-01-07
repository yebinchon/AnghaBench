
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;
struct cpu_hw_events {int dummy; } ;


 int cpu_hw_events ;
 int intel_pmu_drain_pebs_buffer () ;
 scalar_t__ pebs_needs_sched_cb (struct cpu_hw_events*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

void intel_pmu_pebs_sched_task(struct perf_event_context *ctx, bool sched_in)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (!sched_in && pebs_needs_sched_cb(cpuc))
  intel_pmu_drain_pebs_buffer();
}
