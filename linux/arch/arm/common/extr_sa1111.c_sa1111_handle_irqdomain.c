
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;


 int generic_handle_irq_desc (struct irq_desc*) ;
 int irq_linear_revmap (struct irq_domain*,int) ;
 struct irq_desc* irq_to_desc (int ) ;

__attribute__((used)) static void sa1111_handle_irqdomain(struct irq_domain *irqdomain, int irq)
{
 struct irq_desc *d = irq_to_desc(irq_linear_revmap(irqdomain, irq));

 if (d)
  generic_handle_irq_desc(d);
}
