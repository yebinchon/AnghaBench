
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int freq_table; } ;


 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,int ) ;
 int set_freq_table_sorted (struct cpufreq_policy*) ;

int cpufreq_table_validate_and_sort(struct cpufreq_policy *policy)
{
 int ret;

 if (!policy->freq_table)
  return 0;

 ret = cpufreq_frequency_table_cpuinfo(policy, policy->freq_table);
 if (ret)
  return ret;

 return set_freq_table_sorted(policy);
}
