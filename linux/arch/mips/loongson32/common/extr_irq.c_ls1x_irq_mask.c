
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int LS1X_INTC_INTIEN (unsigned int) ;
 int LS1X_IRQ_BASE ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void ls1x_irq_mask(struct irq_data *d)
{
 unsigned int bit = (d->irq - LS1X_IRQ_BASE) & 0x1f;
 unsigned int n = (d->irq - LS1X_IRQ_BASE) >> 5;

 __raw_writel(__raw_readl(LS1X_INTC_INTIEN(n))
   & ~(1 << bit), LS1X_INTC_INTIEN(n));
}
