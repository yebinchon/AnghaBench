
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned int cpu_logical_map (unsigned int) ;
 scalar_t__ cpumask_test_cpu (unsigned int,int *) ;
 int flowctrl_write_cpu_csr (unsigned int,int ) ;
 int flowctrl_write_cpu_halt (unsigned int,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int tegra_cpu_init_mask ;
 int tegra_cpu_out_of_reset (unsigned int) ;
 int tegra_enable_cpu_clock (unsigned int) ;
 scalar_t__ tegra_pmc_cpu_is_powered (unsigned int) ;
 int tegra_pmc_cpu_power_on (unsigned int) ;
 int tegra_pmc_cpu_remove_clamping (unsigned int) ;
 int tegra_put_cpu_in_reset (unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int tegra30_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 int ret;
 unsigned long timeout;

 cpu = cpu_logical_map(cpu);
 tegra_put_cpu_in_reset(cpu);
 flowctrl_write_cpu_halt(cpu, 0);
 if (cpumask_test_cpu(cpu, &tegra_cpu_init_mask)) {
  timeout = jiffies + msecs_to_jiffies(50);
  do {
   if (tegra_pmc_cpu_is_powered(cpu))
    goto remove_clamps;
   udelay(10);
  } while (time_before(jiffies, timeout));
 }







 ret = tegra_pmc_cpu_power_on(cpu);
 if (ret)
  return ret;

remove_clamps:

 tegra_enable_cpu_clock(cpu);
 udelay(10);


 ret = tegra_pmc_cpu_remove_clamping(cpu);
 if (ret)
  return ret;

 udelay(10);

 flowctrl_write_cpu_csr(cpu, 0);
 tegra_cpu_out_of_reset(cpu);
 return 0;
}
