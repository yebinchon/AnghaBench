
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {unsigned int cur; int cpu; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int (* get ) (int ) ;scalar_t__ setpolicy; } ;


 unsigned int arch_freq_get_on_cpu (int ) ;
 TYPE_1__* cpufreq_driver ;
 int sprintf (char*,char*,unsigned int) ;
 unsigned int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static ssize_t show_scaling_cur_freq(struct cpufreq_policy *policy, char *buf)
{
 ssize_t ret;
 unsigned int freq;

 freq = arch_freq_get_on_cpu(policy->cpu);
 if (freq)
  ret = sprintf(buf, "%u\n", freq);
 else if (cpufreq_driver && cpufreq_driver->setpolicy &&
   cpufreq_driver->get)
  ret = sprintf(buf, "%u\n", cpufreq_driver->get(policy->cpu));
 else
  ret = sprintf(buf, "%u\n", policy->cur);
 return ret;
}
