
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int IRQ_LEVEL ;
 int NR_PRIORITY_IRQS ;
 int core_chip ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;
 unsigned int* prio_to_virq ;

__attribute__((used)) static int core_domain_map(struct irq_domain *h, unsigned int virq,
      irq_hw_number_t hw)
{
 if (hw < 4 || hw >= NR_PRIORITY_IRQS)
  return -EINVAL;

 prio_to_virq[hw] = virq;

 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_chip_and_handler(virq, &core_chip, handle_level_irq);
 return 0;
}
