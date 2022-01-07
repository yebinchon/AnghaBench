
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EIO ;
 unsigned int cpu_logical_map (unsigned int) ;
 int rcar_sysc_power_up_cpu (unsigned int) ;

__attribute__((used)) static int r8a7779_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 int ret = -EIO;

 cpu = cpu_logical_map(cpu);
 if (cpu)
  ret = rcar_sysc_power_up_cpu(cpu);

 return ret;
}
