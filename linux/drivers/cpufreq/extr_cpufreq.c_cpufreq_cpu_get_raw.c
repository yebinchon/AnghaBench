
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpus; } ;


 int cpufreq_cpu_data ;
 scalar_t__ cpumask_test_cpu (unsigned int,int ) ;
 struct cpufreq_policy* per_cpu (int ,unsigned int) ;

struct cpufreq_policy *cpufreq_cpu_get_raw(unsigned int cpu)
{
 struct cpufreq_policy *policy = per_cpu(cpufreq_cpu_data, cpu);

 return policy && cpumask_test_cpu(cpu, policy->cpus) ? policy : ((void*)0);
}
