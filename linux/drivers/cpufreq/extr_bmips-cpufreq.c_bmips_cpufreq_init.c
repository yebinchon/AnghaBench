
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;
struct cpufreq_frequency_table {int dummy; } ;


 int BMIPS_CPUFREQ_NAME ;
 scalar_t__ IS_ERR (struct cpufreq_frequency_table*) ;
 int PTR_ERR (struct cpufreq_frequency_table*) ;
 int TRANSITION_LATENCY ;
 struct cpufreq_frequency_table* bmips_cpufreq_get_freq_table (struct cpufreq_policy*) ;
 int cpufreq_generic_init (struct cpufreq_policy*,struct cpufreq_frequency_table*,int ) ;
 int pr_err (char*,int ,int) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int bmips_cpufreq_init(struct cpufreq_policy *policy)
{
 struct cpufreq_frequency_table *freq_table;

 freq_table = bmips_cpufreq_get_freq_table(policy);
 if (IS_ERR(freq_table)) {
  pr_err("%s: couldn't determine frequency table (%ld).\n",
   BMIPS_CPUFREQ_NAME, PTR_ERR(freq_table));
  return PTR_ERR(freq_table);
 }

 cpufreq_generic_init(policy, freq_table, TRANSITION_LATENCY);
 pr_info("%s: registered\n", BMIPS_CPUFREQ_NAME);

 return 0;
}
