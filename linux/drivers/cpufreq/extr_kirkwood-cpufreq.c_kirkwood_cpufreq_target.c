
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct TYPE_4__ {unsigned int driver_data; } ;
struct TYPE_3__ {int base; int ddr_clk; int powersave_clk; int cpu_clk; } ;


 unsigned long CPU_SW_INT_BLK ;


 int clk_set_parent (int ,int ) ;
 int cpu_do_idle () ;
 TYPE_2__* kirkwood_freq_table ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 TYPE_1__ priv ;
 unsigned long readl_relaxed (int ) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int kirkwood_cpufreq_target(struct cpufreq_policy *policy,
       unsigned int index)
{
 unsigned int state = kirkwood_freq_table[index].driver_data;
 unsigned long reg;

 local_irq_disable();


 reg = readl_relaxed(priv.base);
 reg |= CPU_SW_INT_BLK;
 writel_relaxed(reg, priv.base);

 switch (state) {
 case 129:
  clk_set_parent(priv.powersave_clk, priv.cpu_clk);
  break;
 case 128:
  clk_set_parent(priv.powersave_clk, priv.ddr_clk);
  break;
 }


 cpu_do_idle();


 reg = readl_relaxed(priv.base);
 reg &= ~CPU_SW_INT_BLK;
 writel_relaxed(reg, priv.base);

 local_irq_enable();

 return 0;
}
