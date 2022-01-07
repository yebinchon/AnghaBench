
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {scalar_t__ lbr_users; } ;


 int __intel_pmu_lbr_disable () ;
 int cpu_hw_events ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

void intel_pmu_lbr_disable_all(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (cpuc->lbr_users)
  __intel_pmu_lbr_disable();
}
