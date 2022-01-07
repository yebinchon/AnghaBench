
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct cpufreq_policy {unsigned int cur; int clk; TYPE_1__* freq_table; int cpu; } ;
struct TYPE_4__ {int mux_clk; int osc_clk; } ;
struct TYPE_3__ {unsigned int frequency; } ;


 int LS1X_CLK_PLL_DIV ;
 int RST_CPU ;
 int RST_CPU_EN ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int clk_set_parent (int ,int ) ;
 int clk_set_rate (int ,unsigned int) ;
 TYPE_2__* cpufreq ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int) ;
 struct device* get_cpu_device (int ) ;

__attribute__((used)) static int ls1x_cpufreq_target(struct cpufreq_policy *policy,
          unsigned int index)
{
 struct device *cpu_dev = get_cpu_device(policy->cpu);
 unsigned int old_freq, new_freq;

 old_freq = policy->cur;
 new_freq = policy->freq_table[index].frequency;
 clk_set_parent(policy->clk, cpufreq->osc_clk);
 __raw_writel(__raw_readl(LS1X_CLK_PLL_DIV) | RST_CPU_EN | RST_CPU,
       LS1X_CLK_PLL_DIV);
 __raw_writel(__raw_readl(LS1X_CLK_PLL_DIV) & ~(RST_CPU_EN | RST_CPU),
       LS1X_CLK_PLL_DIV);
 clk_set_rate(cpufreq->mux_clk, new_freq * 1000);
 clk_set_parent(policy->clk, cpufreq->mux_clk);
 dev_dbg(cpu_dev, "%u KHz --> %u KHz\n", old_freq, new_freq);

 return 0;
}
