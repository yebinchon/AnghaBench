
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {size_t cpu; } ;


 int * all_cpu_data ;
 int intel_pstate_set_min_pstate (int ) ;

__attribute__((used)) static void intel_cpufreq_stop_cpu(struct cpufreq_policy *policy)
{
 intel_pstate_set_min_pstate(all_cpu_data[policy->cpu]);
}
