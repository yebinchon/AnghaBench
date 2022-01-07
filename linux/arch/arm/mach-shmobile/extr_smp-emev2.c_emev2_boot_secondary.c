
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int arch_send_wakeup_ipi_mask (int ) ;
 int cpu_logical_map (unsigned int) ;
 int cpumask_of (int ) ;

__attribute__((used)) static int emev2_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 arch_send_wakeup_ipi_mask(cpumask_of(cpu_logical_map(cpu)));
 return 0;
}
