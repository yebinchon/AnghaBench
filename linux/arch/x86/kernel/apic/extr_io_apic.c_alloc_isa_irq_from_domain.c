
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chip_data {int isa_irq; } ;
struct irq_domain {int dummy; } ;
struct irq_data {struct mp_chip_data* chip_data; scalar_t__ parent_data; } ;
struct irq_alloc_info {int flags; int ioapic_pin; } ;


 int EBUSY ;
 int ENOMEM ;
 int X86_IRQ_ALLOC_LEGACY ;
 scalar_t__ __add_pin_to_irq_node (struct mp_chip_data*,int,int,int ) ;
 int __irq_domain_alloc_irqs (struct irq_domain*,int,int,int,struct irq_alloc_info*,int,int *) ;
 int ioapic_alloc_attr_node (struct irq_alloc_info*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,int) ;
 struct irq_data* irq_get_irq_data (int) ;
 int mp_check_pin_attr (int,struct irq_alloc_info*) ;

__attribute__((used)) static int alloc_isa_irq_from_domain(struct irq_domain *domain,
         int irq, int ioapic, int pin,
         struct irq_alloc_info *info)
{
 struct mp_chip_data *data;
 struct irq_data *irq_data = irq_get_irq_data(irq);
 int node = ioapic_alloc_attr_node(info);






 if (irq_data && irq_data->parent_data) {
  if (!mp_check_pin_attr(irq, info))
   return -EBUSY;
  if (__add_pin_to_irq_node(irq_data->chip_data, node, ioapic,
       info->ioapic_pin))
   return -ENOMEM;
 } else {
  info->flags |= X86_IRQ_ALLOC_LEGACY;
  irq = __irq_domain_alloc_irqs(domain, irq, 1, node, info, 1,
           ((void*)0));
  if (irq >= 0) {
   irq_data = irq_domain_get_irq_data(domain, irq);
   data = irq_data->chip_data;
   data->isa_irq = 1;
  }
 }

 return irq;
}
