
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cpufreq_policy {size_t cpu; } ;
struct TYPE_2__ {int scaling; } ;
struct cpudata {TYPE_1__ pstate; } ;
typedef int ssize_t ;


 int HWP_GUARANTEED_PERF (int ) ;
 int MSR_HWP_CAPABILITIES ;
 struct cpudata** all_cpu_data ;
 int intel_pstate_get_cppc_guranteed (size_t) ;
 int rdmsrl_on_cpu (size_t,int ,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_base_frequency(struct cpufreq_policy *policy, char *buf)
{
 struct cpudata *cpu;
 u64 cap;
 int ratio;

 ratio = intel_pstate_get_cppc_guranteed(policy->cpu);
 if (ratio <= 0) {
  rdmsrl_on_cpu(policy->cpu, MSR_HWP_CAPABILITIES, &cap);
  ratio = HWP_GUARANTEED_PERF(cap);
 }

 cpu = all_cpu_data[policy->cpu];

 return sprintf(buf, "%d\n", ratio * cpu->pstate.scaling);
}
