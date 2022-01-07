
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQF_NO_THREAD ;
 int IRQF_PERCPU ;
 int MIPS_IRQ_MBOX0 ;
 int MIPS_IRQ_MBOX1 ;
 int panic (char*) ;
 int paravirt_function_interrupt ;
 int paravirt_reched_interrupt ;
 scalar_t__ request_irq (int ,int ,int,char*,int ) ;

__attribute__((used)) static void paravirt_prepare_cpus(unsigned int max_cpus)
{
 if (request_irq(MIPS_IRQ_MBOX0, paravirt_reched_interrupt,
   IRQF_PERCPU | IRQF_NO_THREAD, "Scheduler",
   paravirt_reched_interrupt)) {
  panic("Cannot request_irq for SchedulerIPI");
 }
 if (request_irq(MIPS_IRQ_MBOX1, paravirt_function_interrupt,
   IRQF_PERCPU | IRQF_NO_THREAD, "SMP-Call",
   paravirt_function_interrupt)) {
  panic("Cannot request_irq for SMP-Call");
 }
}
