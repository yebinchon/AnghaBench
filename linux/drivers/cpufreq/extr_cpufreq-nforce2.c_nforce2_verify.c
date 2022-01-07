
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int max; unsigned int min; } ;


 int cpufreq_verify_within_cpu_limits (struct cpufreq_policy*) ;
 int fid ;

__attribute__((used)) static int nforce2_verify(struct cpufreq_policy *policy)
{
 unsigned int fsb_pol_max;

 fsb_pol_max = policy->max / (fid * 100);

 if (policy->min < (fsb_pol_max * fid * 100))
  policy->max = (fsb_pol_max + 1) * fid * 100;

 cpufreq_verify_within_cpu_limits(policy);
 return 0;
}
