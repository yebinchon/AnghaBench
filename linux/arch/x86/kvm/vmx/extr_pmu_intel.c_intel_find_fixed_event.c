
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_type; } ;


 int ARRAY_SIZE (size_t*) ;
 int PERF_COUNT_HW_MAX ;
 size_t* fixed_pmc_events ;
 TYPE_1__* intel_arch_events ;

__attribute__((used)) static unsigned intel_find_fixed_event(int idx)
{
 if (idx >= ARRAY_SIZE(fixed_pmc_events))
  return PERF_COUNT_HW_MAX;

 return intel_arch_events[fixed_pmc_events[idx]].event_type;
}
