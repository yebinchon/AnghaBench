
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int policy; } ;


 int CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE ;
 int CPUFREQ_POLICY_PERFORMANCE ;
 int CPUFREQ_POLICY_POWERSAVE ;
 scalar_t__ IS_ENABLED (int ) ;
 int __intel_pstate_cpu_init (struct cpufreq_policy*) ;

__attribute__((used)) static int intel_pstate_cpu_init(struct cpufreq_policy *policy)
{
 int ret = __intel_pstate_cpu_init(policy);

 if (ret)
  return ret;

 if (IS_ENABLED(CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE))
  policy->policy = CPUFREQ_POLICY_PERFORMANCE;
 else
  policy->policy = CPUFREQ_POLICY_POWERSAVE;

 return 0;
}
