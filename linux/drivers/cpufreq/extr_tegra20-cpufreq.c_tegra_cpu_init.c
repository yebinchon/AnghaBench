
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra20_cpufreq {int cpu_clk; } ;
struct cpufreq_policy {int suspend_freq; int clk; } ;
struct TYPE_3__ {int frequency; } ;


 int clk_prepare_enable (int ) ;
 int cpufreq_generic_init (struct cpufreq_policy*,TYPE_1__*,int) ;
 struct tegra20_cpufreq* cpufreq_get_driver_data () ;
 TYPE_1__* freq_table ;

__attribute__((used)) static int tegra_cpu_init(struct cpufreq_policy *policy)
{
 struct tegra20_cpufreq *cpufreq = cpufreq_get_driver_data();

 clk_prepare_enable(cpufreq->cpu_clk);


 cpufreq_generic_init(policy, freq_table, 300 * 1000);
 policy->clk = cpufreq->cpu_clk;
 policy->suspend_freq = freq_table[0].frequency;
 return 0;
}
