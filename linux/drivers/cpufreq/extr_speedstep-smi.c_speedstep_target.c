
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int speedstep_set_state (unsigned int) ;

__attribute__((used)) static int speedstep_target(struct cpufreq_policy *policy, unsigned int index)
{
 speedstep_set_state(index);

 return 0;
}
