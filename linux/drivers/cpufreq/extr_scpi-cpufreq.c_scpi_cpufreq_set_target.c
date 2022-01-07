
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct scpi_data {int clk; } ;
struct TYPE_3__ {int max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; int related_cpus; struct scpi_data* driver_data; TYPE_2__* freq_table; } ;
struct TYPE_4__ {unsigned long frequency; } ;


 int EIO ;
 int arch_set_freq_scale (int ,unsigned long,int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_set_rate (int ,scalar_t__) ;

__attribute__((used)) static int
scpi_cpufreq_set_target(struct cpufreq_policy *policy, unsigned int index)
{
 unsigned long freq = policy->freq_table[index].frequency;
 struct scpi_data *priv = policy->driver_data;
 u64 rate = freq * 1000;
 int ret;

 ret = clk_set_rate(priv->clk, rate);

 if (ret)
  return ret;

 if (clk_get_rate(priv->clk) != rate)
  return -EIO;

 arch_set_freq_scale(policy->related_cpus, freq,
       policy->cpuinfo.max_freq);

 return 0;
}
