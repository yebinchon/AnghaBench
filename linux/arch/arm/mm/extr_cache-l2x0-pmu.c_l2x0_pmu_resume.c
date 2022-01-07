
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_EF_RELOAD ;
 int PMU_NR_COUNTERS ;
 scalar_t__* events ;
 int l2x0_pmu ;
 int l2x0_pmu_enable (int ) ;
 int l2x0_pmu_event_start (scalar_t__,int ) ;
 int l2x0_pmu_reset () ;

void l2x0_pmu_resume(void)
{
 int i;

 if (!l2x0_pmu)
  return;

 l2x0_pmu_reset();

 for (i = 0; i < PMU_NR_COUNTERS; i++) {
  if (events[i])
   l2x0_pmu_event_start(events[i], PERF_EF_RELOAD);
 }

 l2x0_pmu_enable(l2x0_pmu);
}
