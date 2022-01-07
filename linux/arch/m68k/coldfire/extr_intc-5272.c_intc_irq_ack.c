
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {unsigned int irq; } ;
struct TYPE_2__ {int index; int icr; scalar_t__ ack; } ;


 unsigned int MCFINT_VECBASE ;
 unsigned int MCFINT_VECMAX ;
 TYPE_1__* intc_irqmap ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void intc_irq_ack(struct irq_data *d)
{
 unsigned int irq = d->irq;


 if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECMAX)) {
  irq -= MCFINT_VECBASE;
  if (intc_irqmap[irq].ack) {
   u32 v;
   v = readl(intc_irqmap[irq].icr);
   v &= (0x7 << intc_irqmap[irq].index);
   v |= (0x8 << intc_irqmap[irq].index);
   writel(v, intc_irqmap[irq].icr);
  }
 }
}
