
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_EF_UPDATE ;
 int PMU_NR_COUNTERS ;
 scalar_t__* events ;
 int l2x0_pmu ;
 int l2x0_pmu_disable (int ) ;
 int l2x0_pmu_event_stop (scalar_t__,int ) ;

void l2x0_pmu_suspend(void)
{
 int i;

 if (!l2x0_pmu)
  return;

 l2x0_pmu_disable(l2x0_pmu);

 for (i = 0; i < PMU_NR_COUNTERS; i++) {
  if (events[i])
   l2x0_pmu_event_stop(events[i], PERF_EF_UPDATE);
 }

}
