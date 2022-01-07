
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {struct clk* clk; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {unsigned long frequency; } ;


 unsigned long CPUFREQ_TABLE_END ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,unsigned long) ;
 int cpu_clock_freq ;
 int cpufreq_generic_init (struct cpufreq_policy*,TYPE_1__*,int ) ;
 TYPE_1__* loongson2_clockmod_table ;
 int pr_err (char*) ;

__attribute__((used)) static int loongson2_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 struct clk *cpuclk;
 int i;
 unsigned long rate;
 int ret;

 cpuclk = clk_get(((void*)0), "cpu_clk");
 if (IS_ERR(cpuclk)) {
  pr_err("couldn't get CPU clk\n");
  return PTR_ERR(cpuclk);
 }

 rate = cpu_clock_freq / 1000;
 if (!rate) {
  clk_put(cpuclk);
  return -EINVAL;
 }


 for (i = 2;
      (loongson2_clockmod_table[i].frequency != CPUFREQ_TABLE_END);
      i++)
  loongson2_clockmod_table[i].frequency = (rate * i) / 8;

 ret = clk_set_rate(cpuclk, rate * 1000);
 if (ret) {
  clk_put(cpuclk);
  return ret;
 }

 policy->clk = cpuclk;
 cpufreq_generic_init(policy, &loongson2_clockmod_table[0], 0);
 return 0;
}
