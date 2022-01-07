
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int perf_ctr_virt_mask; } ;


 int AMD64_EVENTSEL_HOSTONLY ;
 int amd_pmu_disable_all () ;
 int cpu_hw_events ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int x86_pmu_enable_all (int ) ;

void amd_pmu_disable_virt(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);







 cpuc->perf_ctr_virt_mask = AMD64_EVENTSEL_HOSTONLY;


 amd_pmu_disable_all();
 x86_pmu_enable_all(0);
}
