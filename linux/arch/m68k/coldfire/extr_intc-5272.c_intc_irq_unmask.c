
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {unsigned int irq; } ;
struct TYPE_2__ {int index; int icr; } ;


 unsigned int MCFINT_VECBASE ;
 unsigned int MCFINT_VECMAX ;
 TYPE_1__* intc_irqmap ;
 int writel (int,int ) ;

__attribute__((used)) static void intc_irq_unmask(struct irq_data *d)
{
 unsigned int irq = d->irq;

 if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECMAX)) {
  u32 v;
  irq -= MCFINT_VECBASE;
  v = 0xd << intc_irqmap[irq].index;
  writel(v, intc_irqmap[irq].icr);
 }
}
