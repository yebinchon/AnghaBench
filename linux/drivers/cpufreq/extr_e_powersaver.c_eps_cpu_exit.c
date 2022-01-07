
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int cpu; } ;


 int ** eps_cpu ;
 int kfree (int *) ;

__attribute__((used)) static int eps_cpu_exit(struct cpufreq_policy *policy)
{
 unsigned int cpu = policy->cpu;


 kfree(eps_cpu[cpu]);
 eps_cpu[cpu] = ((void*)0);
 return 0;
}
