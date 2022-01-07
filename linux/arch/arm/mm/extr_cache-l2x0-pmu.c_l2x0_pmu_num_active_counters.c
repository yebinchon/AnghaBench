
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMU_NR_COUNTERS ;
 scalar_t__* events ;

__attribute__((used)) static int l2x0_pmu_num_active_counters(void)
{
 int i, cnt = 0;

 for (i = 0; i < PMU_NR_COUNTERS; i++) {
  if (events[i])
   cnt++;
 }

 return cnt;
}
