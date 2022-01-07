
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
 unsigned int NR_IPI ;
 int __inc_irq_stat (unsigned int,int ) ;
 int generic_smp_call_function_interrupt () ;
 int ipi_complete (unsigned int) ;
 int ipi_cpu_stop (unsigned int) ;
 int * ipi_irqs ;
 int * ipi_types ;
 int irq_enter () ;
 int irq_exit () ;
 int irq_work_run () ;
 int nmi_cpu_backtrace (struct pt_regs*) ;
 int pr_crit (char*,unsigned int,int) ;
 int printk_nmi_enter () ;
 int printk_nmi_exit () ;
 int scheduler_ipi () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 unsigned int smp_processor_id () ;
 int tick_receive_broadcast () ;
 int trace_ipi_entry_rcuidle (int ) ;
 int trace_ipi_exit_rcuidle (int ) ;

void handle_IPI(int ipinr, struct pt_regs *regs)
{
 unsigned int cpu = smp_processor_id();
 struct pt_regs *old_regs = set_irq_regs(regs);

 if ((unsigned)ipinr < NR_IPI) {
  trace_ipi_entry_rcuidle(ipi_types[ipinr]);
  __inc_irq_stat(cpu, ipi_irqs[ipinr]);
 }

 switch (ipinr) {
 case 128:
  break;
 case 130:
  scheduler_ipi();
  break;

 case 135:
  irq_enter();
  generic_smp_call_function_interrupt();
  irq_exit();
  break;

 case 132:
  irq_enter();
  ipi_cpu_stop(cpu);
  irq_exit();
  break;
 case 134:
  irq_enter();
  ipi_complete(cpu);
  irq_exit();
  break;

 case 133:
  printk_nmi_enter();
  irq_enter();
  nmi_cpu_backtrace(regs);
  irq_exit();
  printk_nmi_exit();
  break;

 default:
  pr_crit("CPU%u: Unknown IPI message 0x%x\n",
          cpu, ipinr);
  break;
 }

 if ((unsigned)ipinr < NR_IPI)
  trace_ipi_exit_rcuidle(ipi_types[ipinr]);
 set_irq_regs(old_regs);
}
