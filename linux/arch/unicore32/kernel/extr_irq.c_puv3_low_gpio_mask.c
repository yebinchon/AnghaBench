
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int INTC_ICMR ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void puv3_low_gpio_mask(struct irq_data *d)
{
 writel(readl(INTC_ICMR) & ~(1 << d->irq), INTC_ICMR);
}
