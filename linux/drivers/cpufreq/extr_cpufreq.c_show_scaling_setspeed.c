
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {TYPE_1__* governor; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* show_setspeed ) (struct cpufreq_policy*,char*) ;} ;


 int sprintf (char*,char*) ;
 int stub1 (struct cpufreq_policy*,char*) ;

__attribute__((used)) static ssize_t show_scaling_setspeed(struct cpufreq_policy *policy, char *buf)
{
 if (!policy->governor || !policy->governor->show_setspeed)
  return sprintf(buf, "<unsupported>\n");

 return policy->governor->show_setspeed(policy, buf);
}
