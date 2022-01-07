
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct irq_data {int irq; } ;


 scalar_t__ PCIMT_IRQSEL ;
 int PCIMT_IRQ_INT2 ;

__attribute__((used)) static void enable_pcimt_irq(struct irq_data *d)
{
 unsigned int mask = 1 << (d->irq - PCIMT_IRQ_INT2);

 *(volatile u8 *) PCIMT_IRQSEL |= mask;
}
