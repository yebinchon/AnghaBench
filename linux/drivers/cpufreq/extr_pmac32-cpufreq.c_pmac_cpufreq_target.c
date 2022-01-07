
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 unsigned long cur_freq ;
 int do_set_cpu_speed (struct cpufreq_policy*,unsigned int) ;
 unsigned long ppc_proc_freq ;

__attribute__((used)) static int pmac_cpufreq_target( struct cpufreq_policy *policy,
     unsigned int index)
{
 int rc;

 rc = do_set_cpu_speed(policy, index);

 ppc_proc_freq = cur_freq * 1000ul;
 return rc;
}
