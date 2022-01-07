
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int name; } ;


 int CPUFREQ_NAME_PLEN ;
 TYPE_1__* cpufreq_driver ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_scaling_driver(struct cpufreq_policy *policy, char *buf)
{
 return scnprintf(buf, CPUFREQ_NAME_PLEN, "%s\n", cpufreq_driver->name);
}
