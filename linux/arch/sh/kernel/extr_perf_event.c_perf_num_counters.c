
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_events; } ;


 TYPE_1__* sh_pmu ;

int perf_num_counters(void)
{
 if (!sh_pmu)
  return 0;

 return sh_pmu->num_events;
}
