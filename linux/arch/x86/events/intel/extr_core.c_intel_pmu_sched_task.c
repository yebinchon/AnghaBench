
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;


 int intel_pmu_lbr_sched_task (struct perf_event_context*,int) ;
 int intel_pmu_pebs_sched_task (struct perf_event_context*,int) ;

__attribute__((used)) static void intel_pmu_sched_task(struct perf_event_context *ctx,
     bool sched_in)
{
 intel_pmu_pebs_sched_task(ctx, sched_in);
 intel_pmu_lbr_sched_task(ctx, sched_in);
}
