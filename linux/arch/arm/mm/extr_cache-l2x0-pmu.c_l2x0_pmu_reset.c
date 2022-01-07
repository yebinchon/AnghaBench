
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMU_NR_COUNTERS ;
 int __l2x0_pmu_disable () ;
 int __l2x0_pmu_event_disable (int) ;

__attribute__((used)) static void l2x0_pmu_reset(void)
{
 int i;

 __l2x0_pmu_disable();

 for (i = 0; i < PMU_NR_COUNTERS; i++)
  __l2x0_pmu_event_disable(i);
}
