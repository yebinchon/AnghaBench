
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int GPIO_GFER ;
 int GPIO_GRER ;
 unsigned int GPIO_IRQ_mask ;
 unsigned int GPIO_MASK (int ) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void puv3_high_gpio_mask(struct irq_data *d)
{
 unsigned int mask = GPIO_MASK(d->irq);

 GPIO_IRQ_mask &= ~mask;

 writel(readl(GPIO_GRER) & ~mask, GPIO_GRER);
 writel(readl(GPIO_GFER) & ~mask, GPIO_GFER);
}
