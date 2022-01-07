
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra20_cpufreq {int pll_p_clk; } ;
struct cpufreq_policy {unsigned int cur; } ;
struct TYPE_2__ {unsigned int frequency; } ;


 int clk_get_rate (int ) ;
 struct tegra20_cpufreq* cpufreq_get_driver_data () ;
 TYPE_1__* freq_table ;

__attribute__((used)) static unsigned int tegra_get_intermediate(struct cpufreq_policy *policy,
        unsigned int index)
{
 struct tegra20_cpufreq *cpufreq = cpufreq_get_driver_data();
 unsigned int ifreq = clk_get_rate(cpufreq->pll_p_clk) / 1000;






 if (freq_table[index].frequency == ifreq || policy->cur == ifreq)
  return 0;

 return ifreq;
}
