
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cpufreq_policy {int cpu; TYPE_1__* freq_table; } ;
struct TYPE_4__ {scalar_t__ ctrl_val; } ;
struct TYPE_3__ {unsigned int driver_data; } ;


 int INTEL_PERF_CTL_MASK ;
 int MSR_IA32_PERF_CTL ;
 int rdmsr_on_cpu (int ,int ,int*,int*) ;
 TYPE_2__* sfi_cpufreq_array ;
 int wrmsr_on_cpu (int ,int ,int,int) ;

__attribute__((used)) static int sfi_cpufreq_target(struct cpufreq_policy *policy, unsigned int index)
{
 unsigned int next_perf_state = 0;
 u32 lo, hi;

 next_perf_state = policy->freq_table[index].driver_data;

 rdmsr_on_cpu(policy->cpu, MSR_IA32_PERF_CTL, &lo, &hi);
 lo = (lo & ~INTEL_PERF_CTL_MASK) |
  ((u32) sfi_cpufreq_array[next_perf_state].ctrl_val &
  INTEL_PERF_CTL_MASK);
 wrmsr_on_cpu(policy->cpu, MSR_IA32_PERF_CTL, lo, hi);

 return 0;
}
