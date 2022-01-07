
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int cpufreq_generic_init (struct cpufreq_policy*,int ,int) ;
 int maple_cpu_freqs ;

__attribute__((used)) static int maple_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 cpufreq_generic_init(policy, maple_cpu_freqs, 12000);
 return 0;
}
