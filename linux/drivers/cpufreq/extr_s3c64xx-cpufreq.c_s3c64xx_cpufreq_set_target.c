
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c64xx_dvfs {int vddarm_max; int vddarm_min; } ;
struct cpufreq_policy {int clk; } ;
struct TYPE_2__ {unsigned int frequency; size_t driver_data; } ;


 int clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,...) ;
 int regulator_set_voltage (scalar_t__,int ,int ) ;
 struct s3c64xx_dvfs* s3c64xx_dvfs_table ;
 TYPE_1__* s3c64xx_freq_table ;
 scalar_t__ vddarm ;

__attribute__((used)) static int s3c64xx_cpufreq_set_target(struct cpufreq_policy *policy,
          unsigned int index)
{
 struct s3c64xx_dvfs *dvfs;
 unsigned int old_freq, new_freq;
 int ret;

 old_freq = clk_get_rate(policy->clk) / 1000;
 new_freq = s3c64xx_freq_table[index].frequency;
 dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[index].driver_data];
 ret = clk_set_rate(policy->clk, new_freq * 1000);
 if (ret < 0) {
  pr_err("Failed to set rate %dkHz: %d\n",
         new_freq, ret);
  return ret;
 }
 pr_debug("Set actual frequency %lukHz\n",
   clk_get_rate(policy->clk) / 1000);

 return 0;
}
