
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int max; } ;


 int CPUFREQ_RELATION_H ;
 int __cpufreq_driver_target (struct cpufreq_policy*,int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void cpufreq_gov_performance_limits(struct cpufreq_policy *policy)
{
 pr_debug("setting to %u kHz\n", policy->max);
 __cpufreq_driver_target(policy, policy->max, CPUFREQ_RELATION_H);
}
