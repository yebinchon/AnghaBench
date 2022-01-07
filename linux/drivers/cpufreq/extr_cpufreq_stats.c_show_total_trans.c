
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {TYPE_1__* stats; } ;
typedef int ssize_t ;
struct TYPE_2__ {int total_trans; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_total_trans(struct cpufreq_policy *policy, char *buf)
{
 return sprintf(buf, "%d\n", policy->stats->total_trans);
}
