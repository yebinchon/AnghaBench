
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_CORE_PERF_FIXED_CTR0 ;






 int MSR_IA32_PERFCTR0 ;
 int MSR_P6_EVNTSEL0 ;
 int MSR_PMC_ALIAS_MASK ;
 int MSR_TYPE_ARCH_COUNTER ;
 int MSR_TYPE_ARCH_CTRL ;
 int MSR_TYPE_COUNTER ;
 int MSR_TYPE_CTRL ;
 int MSR_TYPE_GLOBAL ;
 int intel_num_arch_counters ;
 int intel_num_fixed_counters ;

__attribute__((used)) static int is_intel_pmu_msr(u32 msr_index, int *type, int *index)
{
 u32 msr_index_pmc;

 switch (msr_index) {
 case 133:
 case 129:
 case 128:
  *type = MSR_TYPE_CTRL;
  return 1;

 case 132:
 case 130:
 case 131:
  *type = MSR_TYPE_GLOBAL;
  return 1;

 default:

  if ((msr_index >= MSR_CORE_PERF_FIXED_CTR0) &&
      (msr_index < MSR_CORE_PERF_FIXED_CTR0 +
     intel_num_fixed_counters)) {
   *index = msr_index - MSR_CORE_PERF_FIXED_CTR0;
   *type = MSR_TYPE_COUNTER;
   return 1;
  }

  if ((msr_index >= MSR_P6_EVNTSEL0) &&
      (msr_index < MSR_P6_EVNTSEL0 + intel_num_arch_counters)) {
   *index = msr_index - MSR_P6_EVNTSEL0;
   *type = MSR_TYPE_ARCH_CTRL;
   return 1;
  }

  msr_index_pmc = msr_index & MSR_PMC_ALIAS_MASK;
  if ((msr_index_pmc >= MSR_IA32_PERFCTR0) &&
      (msr_index_pmc < MSR_IA32_PERFCTR0 +
         intel_num_arch_counters)) {
   *type = MSR_TYPE_ARCH_COUNTER;
   *index = msr_index_pmc - MSR_IA32_PERFCTR0;
   return 1;
  }
  return 0;
 }
}
