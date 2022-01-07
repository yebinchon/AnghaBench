
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {unsigned int irq; } ;
struct TYPE_4__ {int scr; } ;
struct TYPE_3__ {int mode; } ;


 unsigned int TXX9_IRQ_BASE ;
 int TXx9_IRCR_EDGE (int ) ;
 unsigned int TXx9_IRSCR_EIClrE ;
 int __raw_writel (unsigned int,int *) ;
 TYPE_2__* txx9_ircptr ;
 int txx9_irq_mask (struct irq_data*) ;
 TYPE_1__* txx9irq ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void txx9_irq_mask_ack(struct irq_data *d)
{
 unsigned int irq_nr = d->irq - TXX9_IRQ_BASE;

 txx9_irq_mask(d);

 if (unlikely(TXx9_IRCR_EDGE(txx9irq[irq_nr].mode)))
  __raw_writel(TXx9_IRSCR_EIClrE | irq_nr, &txx9_ircptr->scr);
}
