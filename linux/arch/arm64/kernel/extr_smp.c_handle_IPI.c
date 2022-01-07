
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CONFIG_KEXEC_CORE ;







 int IS_ENABLED (int ) ;
 unsigned int NR_IPI ;
 int WARN_ONCE (int,char*,unsigned int) ;
 int __inc_irq_stat (unsigned int,int ) ;
 int acpi_parking_protocol_valid (unsigned int) ;
 int generic_smp_call_function_interrupt () ;
 int ipi_cpu_crash_stop (unsigned int,struct pt_regs*) ;
 int * ipi_irqs ;
 int * ipi_types ;
 int irq_enter () ;
 int irq_exit () ;
 int irq_work_run () ;
 int local_cpu_stop () ;
 int pr_crit (char*,unsigned int,int) ;
 int scheduler_ipi () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 unsigned int smp_processor_id () ;
 int tick_receive_broadcast () ;
 int trace_ipi_entry_rcuidle (int ) ;
 int trace_ipi_exit_rcuidle (int ) ;
 int unreachable () ;

void handle_IPI(int ipinr, struct pt_regs *regs)
{
 unsigned int cpu = smp_processor_id();
 struct pt_regs *old_regs = set_irq_regs(regs);

 if ((unsigned)ipinr < NR_IPI) {
  trace_ipi_entry_rcuidle(ipi_types[ipinr]);
  __inc_irq_stat(cpu, ipi_irqs[ipinr]);
 }

 switch (ipinr) {
 case 130:
  scheduler_ipi();
  break;

 case 134:
  irq_enter();
  generic_smp_call_function_interrupt();
  irq_exit();
  break;

 case 132:
  irq_enter();
  local_cpu_stop();
  irq_exit();
  break;

 case 133:
  if (IS_ENABLED(CONFIG_KEXEC_CORE)) {
   irq_enter();
   ipi_cpu_crash_stop(cpu, regs);

   unreachable();
  }
  break;
 default:
  pr_crit("CPU%u: Unknown IPI message 0x%x\n", cpu, ipinr);
  break;
 }

 if ((unsigned)ipinr < NR_IPI)
  trace_ipi_exit_rcuidle(ipi_types[ipinr]);
 set_irq_regs(old_regs);
}
