
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int fast_switch_possible; } ;


 int intel_pstate_exit_perf_limits (struct cpufreq_policy*) ;

__attribute__((used)) static int intel_pstate_cpu_exit(struct cpufreq_policy *policy)
{
 intel_pstate_exit_perf_limits(policy);

 policy->fast_switch_possible = 0;

 return 0;
}
