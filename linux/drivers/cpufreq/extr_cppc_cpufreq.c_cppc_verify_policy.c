
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int cpufreq_verify_within_cpu_limits (struct cpufreq_policy*) ;

__attribute__((used)) static int cppc_verify_policy(struct cpufreq_policy *policy)
{
 cpufreq_verify_within_cpu_limits(policy);
 return 0;
}
