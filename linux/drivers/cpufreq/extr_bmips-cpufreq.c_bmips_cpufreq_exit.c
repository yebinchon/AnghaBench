
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int freq_table; } ;


 int kfree (int ) ;

__attribute__((used)) static int bmips_cpufreq_exit(struct cpufreq_policy *policy)
{
 kfree(policy->freq_table);

 return 0;
}
