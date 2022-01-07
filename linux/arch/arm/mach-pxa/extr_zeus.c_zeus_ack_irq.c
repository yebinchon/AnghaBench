
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ZEUS_CPLD_ISA_IRQ ;
 int __raw_writew (int ,int ) ;
 int zeus_irq_to_bitmask (int ) ;

__attribute__((used)) static void zeus_ack_irq(struct irq_data *d)
{
 __raw_writew(zeus_irq_to_bitmask(d->irq), ZEUS_CPLD_ISA_IRQ);
}
