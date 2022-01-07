
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_freq; int max_freq; int transition_latency; } ;
struct cpufreq_policy {int min; int max; TYPE_1__ cpuinfo; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ cpu_is_pxa300 () ;
 scalar_t__ cpu_is_pxa310 () ;
 scalar_t__ cpu_is_pxa320 () ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int pxa300_freqs ;
 int pxa320_freqs ;
 int setup_freqs_table (struct cpufreq_policy*,int ,int ) ;

__attribute__((used)) static int pxa3xx_cpufreq_init(struct cpufreq_policy *policy)
{
 int ret = -EINVAL;


 policy->min = policy->cpuinfo.min_freq = 104000;
 policy->max = policy->cpuinfo.max_freq =
  (cpu_is_pxa320()) ? 806000 : 624000;
 policy->cpuinfo.transition_latency = 1000;

 if (cpu_is_pxa300() || cpu_is_pxa310())
  ret = setup_freqs_table(policy, pxa300_freqs,
     ARRAY_SIZE(pxa300_freqs));

 if (cpu_is_pxa320())
  ret = setup_freqs_table(policy, pxa320_freqs,
     ARRAY_SIZE(pxa320_freqs));

 if (ret) {
  pr_err("failed to setup frequency table\n");
  return ret;
 }

 pr_info("CPUFREQ support for PXA3xx initialized\n");
 return 0;
}
