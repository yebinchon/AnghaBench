
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSR_F15H_PERF_CTL ;
 int MSR_F15H_PERF_CTR ;
 unsigned int MSR_K7_EVNTSEL0 ;
 int MSR_K7_PERFCTR0 ;
 int amd_num_counters ;

__attribute__((used)) static inline bool is_amd_pmu_msr(unsigned int msr)
{
 if ((msr >= MSR_F15H_PERF_CTL &&
      msr < MSR_F15H_PERF_CTR + (amd_num_counters * 2)) ||
     (msr >= MSR_K7_EVNTSEL0 &&
      msr < MSR_K7_PERFCTR0 + amd_num_counters))
  return 1;

 return 0;
}
