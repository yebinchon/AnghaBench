
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int cbe_cpufreq_pmi_policy_exit (struct cpufreq_policy*) ;

__attribute__((used)) static int cbe_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{
 cbe_cpufreq_pmi_policy_exit(policy);
 return 0;
}
