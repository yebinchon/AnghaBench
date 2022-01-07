
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
typedef int cpuid_t ;


 unsigned long CPU_CALL_A_IRQ ;
 unsigned long CPU_CALL_B_IRQ ;
 unsigned long CPU_RESCHED_A_IRQ ;
 unsigned long CPU_RESCHED_B_IRQ ;
 int LOCAL_HUB_CLR_INTR (unsigned long) ;
 unsigned long LOCAL_HUB_L (int ) ;
 int PI_INT_PEND0 ;
 int __ffs (unsigned long) ;
 int generic_handle_irq (int) ;
 int generic_smp_call_function_interrupt () ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_enable_mask ;
 int irq_linear_revmap (struct irq_domain*,int ) ;
 unsigned long* per_cpu (int ,int ) ;
 int scheduler_ipi () ;
 int smp_processor_id () ;
 int spurious_interrupt () ;

__attribute__((used)) static void ip27_do_irq_mask0(struct irq_desc *desc)
{
 cpuid_t cpu = smp_processor_id();
 unsigned long *mask = per_cpu(irq_enable_mask, cpu);
 struct irq_domain *domain;
 u64 pend0;
 int irq;


 pend0 = LOCAL_HUB_L(PI_INT_PEND0);

 pend0 &= mask[0];
 if (!pend0)
  return;
 {
  domain = irq_desc_get_handler_data(desc);
  irq = irq_linear_revmap(domain, __ffs(pend0));
  if (irq)
   generic_handle_irq(irq);
  else
   spurious_interrupt();
 }

 LOCAL_HUB_L(PI_INT_PEND0);
}
