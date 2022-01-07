
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; } ;
struct cpufreq_policy {size_t cpu; scalar_t__ policy; int max; TYPE_1__ cpuinfo; } ;
struct cpudata {scalar_t__ policy; } ;


 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ;
 int ENODEV ;
 struct cpudata** all_cpu_data ;
 scalar_t__ hwp_active ;
 int hwp_boost ;
 int intel_pstate_clear_update_util_hook (size_t) ;
 int intel_pstate_hwp_set (size_t) ;
 int intel_pstate_limits_lock ;
 int intel_pstate_max_within_limits (struct cpudata*) ;
 int intel_pstate_set_update_util_hook (size_t) ;
 int intel_pstate_update_perf_limits (struct cpufreq_policy*,struct cpudata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int intel_pstate_set_policy(struct cpufreq_policy *policy)
{
 struct cpudata *cpu;

 if (!policy->cpuinfo.max_freq)
  return -ENODEV;

 pr_debug("set_policy cpuinfo.max %u policy->max %u\n",
   policy->cpuinfo.max_freq, policy->max);

 cpu = all_cpu_data[policy->cpu];
 cpu->policy = policy->policy;

 mutex_lock(&intel_pstate_limits_lock);

 intel_pstate_update_perf_limits(policy, cpu);

 if (cpu->policy == CPUFREQ_POLICY_PERFORMANCE) {




  intel_pstate_clear_update_util_hook(policy->cpu);
  intel_pstate_max_within_limits(cpu);
 } else {
  intel_pstate_set_update_util_hook(policy->cpu);
 }

 if (hwp_active) {





  if (!hwp_boost)
   intel_pstate_clear_update_util_hook(policy->cpu);
  intel_pstate_hwp_set(policy->cpu);
 }

 mutex_unlock(&intel_pstate_limits_lock);

 return 0;
}
