
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpu_logical_map (unsigned int) ;
 int tegra_disable_cpu_clock (unsigned int) ;
 int tegra_wait_cpu_in_reset (unsigned int) ;

int tegra_cpu_kill(unsigned cpu)
{
 cpu = cpu_logical_map(cpu);


 tegra_wait_cpu_in_reset(cpu);
 tegra_disable_cpu_clock(cpu);

 return 1;
}
