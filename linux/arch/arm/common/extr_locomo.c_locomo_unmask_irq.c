
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo {int irq_base; scalar_t__ base; } ;
struct irq_data {int irq; } ;


 scalar_t__ LOCOMO_ICR ;
 struct locomo* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int locomo_readl (scalar_t__) ;
 int locomo_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void locomo_unmask_irq(struct irq_data *d)
{
 struct locomo *lchip = irq_data_get_irq_chip_data(d);
 unsigned int r;
 r = locomo_readl(lchip->base + LOCOMO_ICR);
 r |= (0x0010 << (d->irq - lchip->irq_base));
 locomo_writel(r, lchip->base + LOCOMO_ICR);
}
