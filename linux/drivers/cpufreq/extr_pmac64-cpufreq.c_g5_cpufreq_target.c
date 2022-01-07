
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int g5_switch_freq (unsigned int) ;

__attribute__((used)) static int g5_cpufreq_target(struct cpufreq_policy *policy, unsigned int index)
{
 return g5_switch_freq(index);
}
