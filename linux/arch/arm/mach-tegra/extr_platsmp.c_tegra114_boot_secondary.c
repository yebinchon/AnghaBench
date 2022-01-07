
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int FLOW_CTRL_SCLK_RESUME ;
 int FLOW_CTRL_WAITEVENT ;
 unsigned int cpu_logical_map (unsigned int) ;
 scalar_t__ cpumask_test_cpu (unsigned int,int *) ;
 int flowctrl_write_cpu_csr (unsigned int,int) ;
 int flowctrl_write_cpu_halt (unsigned int,int) ;
 int tegra_cpu_init_mask ;
 int tegra_pmc_cpu_power_on (unsigned int) ;

__attribute__((used)) static int tegra114_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 int ret = 0;

 cpu = cpu_logical_map(cpu);

 if (cpumask_test_cpu(cpu, &tegra_cpu_init_mask)) {






  flowctrl_write_cpu_csr(cpu, 1);
  flowctrl_write_cpu_halt(cpu,
    FLOW_CTRL_WAITEVENT | FLOW_CTRL_SCLK_RESUME);
 } else {






  ret = tegra_pmc_cpu_power_on(cpu);
 }

 return ret;
}
