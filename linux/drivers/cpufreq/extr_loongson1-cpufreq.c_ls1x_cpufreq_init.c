
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cpufreq_policy {int clk; int cpu; } ;
struct cpufreq_frequency_table {unsigned int frequency; } ;
struct TYPE_2__ {unsigned int min_freq; unsigned int max_freq; int clk; int pll_clk; } ;


 unsigned int CPUFREQ_ENTRY_INVALID ;
 unsigned int CPUFREQ_TABLE_END ;
 int DIV_CPU_WIDTH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_get_rate (int ) ;
 TYPE_1__* cpufreq ;
 int cpufreq_generic_init (struct cpufreq_policy*,struct cpufreq_frequency_table*,int ) ;
 int dev_dbg (struct device*,char*,int,unsigned int) ;
 struct device* get_cpu_device (int ) ;
 struct cpufreq_frequency_table* kcalloc (int,int,int ) ;

__attribute__((used)) static int ls1x_cpufreq_init(struct cpufreq_policy *policy)
{
 struct device *cpu_dev = get_cpu_device(policy->cpu);
 struct cpufreq_frequency_table *freq_tbl;
 unsigned int pll_freq, freq;
 int steps, i;

 pll_freq = clk_get_rate(cpufreq->pll_clk) / 1000;

 steps = 1 << DIV_CPU_WIDTH;
 freq_tbl = kcalloc(steps, sizeof(*freq_tbl), GFP_KERNEL);
 if (!freq_tbl)
  return -ENOMEM;

 for (i = 0; i < (steps - 1); i++) {
  freq = pll_freq / (i + 1);
  if ((freq < cpufreq->min_freq) || (freq > cpufreq->max_freq))
   freq_tbl[i].frequency = CPUFREQ_ENTRY_INVALID;
  else
   freq_tbl[i].frequency = freq;
  dev_dbg(cpu_dev,
   "cpufreq table: index %d: frequency %d\n", i,
   freq_tbl[i].frequency);
 }
 freq_tbl[i].frequency = CPUFREQ_TABLE_END;

 policy->clk = cpufreq->clk;
 cpufreq_generic_init(policy, freq_tbl, 0);

 return 0;
}
