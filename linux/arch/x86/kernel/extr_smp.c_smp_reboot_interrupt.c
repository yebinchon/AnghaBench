
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_emergency_vmxoff () ;
 int ipi_entering_ack_irq () ;
 int irq_exit () ;
 int stop_this_cpu (int *) ;

void smp_reboot_interrupt(void)
{
 ipi_entering_ack_irq();
 cpu_emergency_vmxoff();
 stop_this_cpu(((void*)0));
 irq_exit();
}
