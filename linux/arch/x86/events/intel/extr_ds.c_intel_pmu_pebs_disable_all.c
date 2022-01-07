
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {scalar_t__ pebs_enabled; } ;


 int MSR_IA32_PEBS_ENABLE ;
 int cpu_hw_events ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int ) ;

void intel_pmu_pebs_disable_all(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (cpuc->pebs_enabled)
  wrmsrl(MSR_IA32_PEBS_ENABLE, 0);
}
