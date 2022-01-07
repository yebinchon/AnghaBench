
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int clear_IO_APIC () ;
 int cpu_crash_vmclear_loaded_vmcss () ;
 int cpu_emergency_stop_pt () ;
 int cpu_emergency_svm_disable () ;
 int cpu_emergency_vmxoff () ;
 int crash_save_cpu (struct pt_regs*,int ) ;
 int crash_smp_send_stop () ;
 int hpet_disable () ;
 int ioapic_zap_locks () ;
 int lapic_shutdown () ;
 int local_irq_disable () ;
 int restore_boot_irq_mode () ;
 int safe_smp_processor_id () ;

void native_machine_crash_shutdown(struct pt_regs *regs)
{
 local_irq_disable();

 crash_smp_send_stop();




 cpu_crash_vmclear_loaded_vmcss();





 cpu_emergency_vmxoff();
 cpu_emergency_svm_disable();




 cpu_emergency_stop_pt();






 lapic_shutdown();
 restore_boot_irq_mode();



 crash_save_cpu(regs, safe_smp_processor_id());
}
