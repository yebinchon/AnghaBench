
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned int cpu_logical_map (unsigned int) ;
 int flowctrl_write_cpu_csr (unsigned int,int ) ;
 int flowctrl_write_cpu_halt (unsigned int,int ) ;
 int tegra_cpu_out_of_reset (unsigned int) ;
 int tegra_enable_cpu_clock (unsigned int) ;
 int tegra_put_cpu_in_reset (unsigned int) ;

__attribute__((used)) static int tegra20_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 cpu = cpu_logical_map(cpu);
 tegra_put_cpu_in_reset(cpu);







 flowctrl_write_cpu_halt(cpu, 0);

 tegra_enable_cpu_clock(cpu);
 flowctrl_write_cpu_csr(cpu, 0);
 tegra_cpu_out_of_reset(cpu);
 return 0;
}
