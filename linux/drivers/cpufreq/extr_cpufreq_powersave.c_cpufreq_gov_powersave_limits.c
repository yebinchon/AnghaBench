
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int min; } ;


 int CPUFREQ_RELATION_L ;
 int __cpufreq_driver_target (struct cpufreq_policy*,int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void cpufreq_gov_powersave_limits(struct cpufreq_policy *policy)
{
 pr_debug("setting to %u kHz\n", policy->min);
 __cpufreq_driver_target(policy, policy->min, CPUFREQ_RELATION_L);
}
