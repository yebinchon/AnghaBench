
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int freq_table; } ;


 int ENODEV ;
 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int ) ;

int cpufreq_generic_frequency_table_verify(struct cpufreq_policy *policy)
{
 if (!policy->freq_table)
  return -ENODEV;

 return cpufreq_frequency_table_verify(policy, policy->freq_table);
}
