
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct cpufreq_frequency_table {unsigned long frequency; int driver_data; } ;
struct TYPE_2__ {int max_freqs; int clk_mult; } ;


 unsigned long CPUFREQ_TABLE_END ;
 int ENOMEM ;
 struct cpufreq_frequency_table* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned long htp_freq_to_cpu_freq (int ) ;
 struct cpufreq_frequency_table* kmalloc_array (int,int,int ) ;
 TYPE_1__* priv ;

__attribute__((used)) static struct cpufreq_frequency_table *
bmips_cpufreq_get_freq_table(const struct cpufreq_policy *policy)
{
 struct cpufreq_frequency_table *table;
 unsigned long cpu_freq;
 int i;

 cpu_freq = htp_freq_to_cpu_freq(priv->clk_mult);

 table = kmalloc_array(priv->max_freqs + 1, sizeof(*table), GFP_KERNEL);
 if (!table)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < priv->max_freqs; i++) {
  table[i].frequency = cpu_freq / (1 << i);
  table[i].driver_data = i;
 }
 table[i].frequency = CPUFREQ_TABLE_END;

 return table;
}
