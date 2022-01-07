
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int crash_save_cpu (struct pt_regs*,int ) ;
 int crash_smp_send_stop () ;
 int local_irq_disable () ;
 int machine_kexec_mask_interrupts () ;
 int pr_info (char*) ;
 int smp_processor_id () ;

void machine_crash_shutdown(struct pt_regs *regs)
{
 local_irq_disable();


 crash_smp_send_stop();


 crash_save_cpu(regs, smp_processor_id());
 machine_kexec_mask_interrupts();

 pr_info("Starting crashdump kernel...\n");
}
