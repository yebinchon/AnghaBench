
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct davinci_cpufreq_config {int (* set_voltage ) (unsigned int) ;TYPE_1__* freq_table; } ;
struct cpufreq_policy {unsigned int cur; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {unsigned int asyncrate; struct clk* asyncclk; struct clk* armclk; TYPE_2__* dev; } ;
struct TYPE_5__ {struct davinci_cpufreq_config* platform_data; } ;
struct TYPE_4__ {unsigned int frequency; } ;


 int clk_set_rate (struct clk*,unsigned int) ;
 TYPE_3__ cpufreq ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

__attribute__((used)) static int davinci_target(struct cpufreq_policy *policy, unsigned int idx)
{
 struct davinci_cpufreq_config *pdata = cpufreq.dev->platform_data;
 struct clk *armclk = cpufreq.armclk;
 unsigned int old_freq, new_freq;
 int ret = 0;

 old_freq = policy->cur;
 new_freq = pdata->freq_table[idx].frequency;


 if (pdata->set_voltage && new_freq > old_freq) {
  ret = pdata->set_voltage(idx);
  if (ret)
   return ret;
 }

 ret = clk_set_rate(armclk, new_freq * 1000);
 if (ret)
  return ret;

 if (cpufreq.asyncclk) {
  ret = clk_set_rate(cpufreq.asyncclk, cpufreq.asyncrate);
  if (ret)
   return ret;
 }


 if (pdata->set_voltage && new_freq < old_freq)
  pdata->set_voltage(idx);

 return 0;
}
