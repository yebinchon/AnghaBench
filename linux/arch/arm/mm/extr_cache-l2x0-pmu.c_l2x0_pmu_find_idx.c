
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMU_NR_COUNTERS ;
 int * events ;

__attribute__((used)) static int l2x0_pmu_find_idx(void)
{
 int i;

 for (i = 0; i < PMU_NR_COUNTERS; i++) {
  if (!events[i])
   return i;
 }

 return -1;
}
