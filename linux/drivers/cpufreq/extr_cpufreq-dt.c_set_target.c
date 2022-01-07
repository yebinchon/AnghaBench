
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct private_data {int cpu_dev; } ;
struct TYPE_4__ {int max_freq; } ;
struct cpufreq_policy {TYPE_2__ cpuinfo; int related_cpus; TYPE_1__* freq_table; struct private_data* driver_data; } ;
struct TYPE_3__ {unsigned long frequency; } ;


 int arch_set_freq_scale (int ,unsigned long,int ) ;
 int dev_pm_opp_set_rate (int ,unsigned long) ;

__attribute__((used)) static int set_target(struct cpufreq_policy *policy, unsigned int index)
{
 struct private_data *priv = policy->driver_data;
 unsigned long freq = policy->freq_table[index].frequency;
 int ret;

 ret = dev_pm_opp_set_rate(priv->cpu_dev, freq * 1000);

 if (!ret) {
  arch_set_freq_scale(policy->related_cpus, freq,
        policy->cpuinfo.max_freq);
 }

 return ret;
}
