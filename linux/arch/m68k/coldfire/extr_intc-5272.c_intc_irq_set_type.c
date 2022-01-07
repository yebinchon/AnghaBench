
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {unsigned int irq; } ;
struct TYPE_2__ {scalar_t__ ack; } ;


 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int MCFINT_VECBASE ;
 unsigned int MCFINT_VECMAX ;
 int MCFSIM_PITR ;
 TYPE_1__* intc_irqmap ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int intc_irq_set_type(struct irq_data *d, unsigned int type)
{
 unsigned int irq = d->irq;

 if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECMAX)) {
  irq -= MCFINT_VECBASE;
  if (intc_irqmap[irq].ack) {
   u32 v;
   v = readl(MCFSIM_PITR);
   if (type == IRQ_TYPE_EDGE_FALLING)
    v &= ~(0x1 << (32 - irq));
   else
    v |= (0x1 << (32 - irq));
   writel(v, MCFSIM_PITR);
  }
 }
 return 0;
}
