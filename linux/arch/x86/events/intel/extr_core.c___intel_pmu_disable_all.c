
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int active_mask; } ;


 int INTEL_PMC_IDX_FIXED_BTS ;
 int MSR_CORE_PERF_GLOBAL_CTRL ;
 int cpu_hw_events ;
 int intel_pmu_disable_bts () ;
 int intel_pmu_pebs_disable_all () ;
 scalar_t__ test_bit (int ,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void __intel_pmu_disable_all(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 wrmsrl(MSR_CORE_PERF_GLOBAL_CTRL, 0);

 if (test_bit(INTEL_PMC_IDX_FIXED_BTS, cpuc->active_mask))
  intel_pmu_disable_bts();

 intel_pmu_pebs_disable_all();
}
