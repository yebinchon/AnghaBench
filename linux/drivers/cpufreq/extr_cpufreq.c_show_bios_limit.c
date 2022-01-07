
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; int cpu; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* bios_limit ) (int ,unsigned int*) ;} ;


 TYPE_2__* cpufreq_driver ;
 int sprintf (char*,char*,unsigned int) ;
 int stub1 (int ,unsigned int*) ;

__attribute__((used)) static ssize_t show_bios_limit(struct cpufreq_policy *policy, char *buf)
{
 unsigned int limit;
 int ret;
 ret = cpufreq_driver->bios_limit(policy->cpu, &limit);
 if (!ret)
  return sprintf(buf, "%u\n", limit);
 return sprintf(buf, "%u\n", policy->cpuinfo.max_freq);
}
