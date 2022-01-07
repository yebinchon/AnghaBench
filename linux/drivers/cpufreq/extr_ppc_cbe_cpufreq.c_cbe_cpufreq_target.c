
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int cpu; } ;
struct TYPE_2__ {int driver_data; int frequency; } ;


 TYPE_1__* cbe_freqs ;
 int pr_debug (char*,int ,int ,int ) ;
 int set_pmode (int ,unsigned int) ;

__attribute__((used)) static int cbe_cpufreq_target(struct cpufreq_policy *policy,
         unsigned int cbe_pmode_new)
{
 pr_debug("setting frequency for cpu %d to %d kHz, " "1/%d of max frequency\n",

   policy->cpu,
   cbe_freqs[cbe_pmode_new].frequency,
   cbe_freqs[cbe_pmode_new].driver_data);

 return set_pmode(policy->cpu, cbe_pmode_new);
}
