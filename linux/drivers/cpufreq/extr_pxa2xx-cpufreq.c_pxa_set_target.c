
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_freqs {unsigned int khz; } ;
struct pxa_cpufreq_data {int clk_core; } ;
struct cpufreq_policy {int cur; } ;
struct cpufreq_frequency_table {int dummy; } ;


 int clk_set_rate (int ,unsigned int) ;
 struct pxa_cpufreq_data* cpufreq_get_driver_data () ;
 int find_freq_tables (struct cpufreq_frequency_table**,struct pxa_freqs const**) ;
 scalar_t__ freq_debug ;
 int pr_debug (char*,int,unsigned int) ;
 int pxa_cpufreq_change_voltage (struct pxa_freqs const*) ;
 scalar_t__ vcc_core ;

__attribute__((used)) static int pxa_set_target(struct cpufreq_policy *policy, unsigned int idx)
{
 struct cpufreq_frequency_table *pxa_freqs_table;
 const struct pxa_freqs *pxa_freq_settings;
 struct pxa_cpufreq_data *data = cpufreq_get_driver_data();
 unsigned int new_freq_cpu;
 int ret = 0;


 find_freq_tables(&pxa_freqs_table, &pxa_freq_settings);

 new_freq_cpu = pxa_freq_settings[idx].khz;

 if (freq_debug)
  pr_debug("Changing CPU frequency from %d Mhz to %d Mhz\n",
    policy->cur / 1000, new_freq_cpu / 1000);

 if (vcc_core && new_freq_cpu > policy->cur) {
  ret = pxa_cpufreq_change_voltage(&pxa_freq_settings[idx]);
  if (ret)
   return ret;
 }

 clk_set_rate(data->clk_core, new_freq_cpu * 1000);
 if (vcc_core && new_freq_cpu < policy->cur)
  ret = pxa_cpufreq_change_voltage(&pxa_freq_settings[idx]);

 return 0;
}
