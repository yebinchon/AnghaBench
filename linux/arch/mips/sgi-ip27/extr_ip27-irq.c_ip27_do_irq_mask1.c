
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
typedef int cpuid_t ;


 unsigned long LOCAL_HUB_L (int ) ;
 int PI_INT_PEND1 ;
 scalar_t__ __ffs (unsigned long) ;
 int generic_handle_irq (int) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_enable_mask ;
 int irq_linear_revmap (struct irq_domain*,scalar_t__) ;
 unsigned long* per_cpu (int ,int ) ;
 int smp_processor_id () ;
 int spurious_interrupt () ;

__attribute__((used)) static void ip27_do_irq_mask1(struct irq_desc *desc)
{
 cpuid_t cpu = smp_processor_id();
 unsigned long *mask = per_cpu(irq_enable_mask, cpu);
 struct irq_domain *domain;
 u64 pend1;
 int irq;


 pend1 = LOCAL_HUB_L(PI_INT_PEND1);

 pend1 &= mask[1];
 if (!pend1)
  return;

 domain = irq_desc_get_handler_data(desc);
 irq = irq_linear_revmap(domain, __ffs(pend1) + 64);
 if (irq)
  generic_handle_irq(irq);
 else
  spurious_interrupt();

 LOCAL_HUB_L(PI_INT_PEND1);
}
