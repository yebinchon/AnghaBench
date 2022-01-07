
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int cpufreq_generic_init (struct cpufreq_policy*,int ,int) ;
 int kirkwood_freq_table ;

__attribute__((used)) static int kirkwood_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 cpufreq_generic_init(policy, kirkwood_freq_table, 5000);
 return 0;
}
