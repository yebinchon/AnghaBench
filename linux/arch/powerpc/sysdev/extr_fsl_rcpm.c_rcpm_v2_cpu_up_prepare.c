
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E500_PM_PH20 ;
 int rcpm_v2_cpu_exit_state (int,int ) ;
 int rcpm_v2_irq_unmask (int) ;

__attribute__((used)) static void rcpm_v2_cpu_up_prepare(int cpu)
{
 rcpm_v2_cpu_exit_state(cpu, E500_PM_PH20);
 rcpm_v2_irq_unmask(cpu);
}
