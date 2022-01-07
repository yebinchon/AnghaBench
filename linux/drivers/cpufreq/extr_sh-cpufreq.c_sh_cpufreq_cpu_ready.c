
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cpufreq_policy {int min; int max; int cpu; } ;


 int dev_info (struct device*,char*,int,int,int,int) ;
 struct device* get_cpu_device (int ) ;

__attribute__((used)) static void sh_cpufreq_cpu_ready(struct cpufreq_policy *policy)
{
 struct device *dev = get_cpu_device(policy->cpu);

 dev_info(dev, "CPU Frequencies - Minimum %u.%03u MHz, "
        "Maximum %u.%03u MHz.\n",
        policy->min / 1000, policy->min % 1000,
        policy->max / 1000, policy->max % 1000);
}
