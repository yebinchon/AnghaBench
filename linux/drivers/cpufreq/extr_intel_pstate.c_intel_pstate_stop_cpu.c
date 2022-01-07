
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 scalar_t__ hwp_active ;
 int intel_cpufreq_stop_cpu (struct cpufreq_policy*) ;
 int intel_pstate_clear_update_util_hook (int ) ;
 int intel_pstate_hwp_force_min_perf (int ) ;
 int intel_pstate_hwp_save_state (struct cpufreq_policy*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void intel_pstate_stop_cpu(struct cpufreq_policy *policy)
{
 pr_debug("CPU %d exiting\n", policy->cpu);

 intel_pstate_clear_update_util_hook(policy->cpu);
 if (hwp_active) {
  intel_pstate_hwp_save_state(policy);
  intel_pstate_hwp_force_min_perf(policy->cpu);
 } else {
  intel_cpufreq_stop_cpu(policy);
 }
}
