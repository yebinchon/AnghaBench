
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int cpus; int suspend_freq; int clk; } ;
struct TYPE_2__ {int clk; } ;


 size_t ARM ;
 TYPE_1__* clks ;
 int cpufreq_generic_init (struct cpufreq_policy*,int ,int ) ;
 int dev_pm_opp_of_register_em (int ) ;
 int freq_table ;
 int max_freq ;
 int transition_latency ;

__attribute__((used)) static int imx6q_cpufreq_init(struct cpufreq_policy *policy)
{
 policy->clk = clks[ARM].clk;
 cpufreq_generic_init(policy, freq_table, transition_latency);
 policy->suspend_freq = max_freq;
 dev_pm_opp_of_register_em(policy->cpus);

 return 0;
}
