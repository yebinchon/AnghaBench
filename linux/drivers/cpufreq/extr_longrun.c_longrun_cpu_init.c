
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; } ;
struct cpufreq_policy {scalar_t__ cpu; TYPE_1__ cpuinfo; } ;


 int ENODEV ;
 int longrun_determine_freqs (int *,int *) ;
 int longrun_get_policy (struct cpufreq_policy*) ;
 int longrun_high_freq ;
 int longrun_low_freq ;

__attribute__((used)) static int longrun_cpu_init(struct cpufreq_policy *policy)
{
 int result = 0;


 if (policy->cpu != 0)
  return -ENODEV;


 result = longrun_determine_freqs(&longrun_low_freq, &longrun_high_freq);
 if (result)
  return result;


 policy->cpuinfo.min_freq = longrun_low_freq;
 policy->cpuinfo.max_freq = longrun_high_freq;
 longrun_get_policy(policy);

 return 0;
}
