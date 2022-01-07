
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int cpumask_set_cpu (int ,int *) ;
 int cpus_in_crash ;
 int crash_kexec_prepare_cpus () ;
 int crash_save_cpu (struct pt_regs*,int ) ;
 int crashing_cpu ;
 int local_irq_disable () ;
 int smp_processor_id () ;

void default_machine_crash_shutdown(struct pt_regs *regs)
{
 local_irq_disable();
 crashing_cpu = smp_processor_id();
 crash_save_cpu(regs, crashing_cpu);
 crash_kexec_prepare_cpus();
 cpumask_set_cpu(crashing_cpu, &cpus_in_crash);
}
