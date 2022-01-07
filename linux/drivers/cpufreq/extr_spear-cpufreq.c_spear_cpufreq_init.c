
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int clk; } ;
struct TYPE_2__ {int transition_latency; int freq_tbl; int clk; } ;


 int cpufreq_generic_init (struct cpufreq_policy*,int ,int ) ;
 TYPE_1__ spear_cpufreq ;

__attribute__((used)) static int spear_cpufreq_init(struct cpufreq_policy *policy)
{
 policy->clk = spear_cpufreq.clk;
 cpufreq_generic_init(policy, spear_cpufreq.freq_tbl,
   spear_cpufreq.transition_latency);
 return 0;
}
