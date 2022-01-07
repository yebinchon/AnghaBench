
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int IPI_IRQ_OFFSET ;
 unsigned int SMP_ASK_C0COUNT ;
 unsigned int SMP_CALL_FUNCTION ;
 unsigned int SMP_RESCHEDULE_YOURSELF ;
 int __wbflush () ;
 unsigned int* core0_c0count ;
 size_t cpu_logical_map (int) ;
 int do_IRQ (int) ;
 int ffs (unsigned int) ;
 int generic_smp_call_function_interrupt () ;
 int * ipi_clear0_regs ;
 int * ipi_status0_regs ;
 int irq_enter () ;
 int irq_exit () ;
 unsigned int loongson3_ipi_read32 (int ) ;
 int loongson3_ipi_write32 (int ,int ) ;
 int nr_cpu_ids ;
 unsigned int read_c0_count () ;
 int scheduler_ipi () ;
 int smp_processor_id () ;

void loongson3_ipi_interrupt(struct pt_regs *regs)
{
 int i, cpu = smp_processor_id();
 unsigned int action, c0count, irqs;


 action = loongson3_ipi_read32(ipi_status0_regs[cpu_logical_map(cpu)]);
 irqs = action >> IPI_IRQ_OFFSET;


 loongson3_ipi_write32((u32)action, ipi_clear0_regs[cpu_logical_map(cpu)]);

 if (action & SMP_RESCHEDULE_YOURSELF)
  scheduler_ipi();

 if (action & SMP_CALL_FUNCTION) {
  irq_enter();
  generic_smp_call_function_interrupt();
  irq_exit();
 }

 if (action & SMP_ASK_C0COUNT) {
  BUG_ON(cpu != 0);
  c0count = read_c0_count();
  c0count = c0count ? c0count : 1;
  for (i = 1; i < nr_cpu_ids; i++)
   core0_c0count[i] = c0count;
  __wbflush();
 }

 if (irqs) {
  int irq;
  while ((irq = ffs(irqs))) {
   do_IRQ(irq-1);
   irqs &= ~(1<<(irq-1));
  }
 }
}
