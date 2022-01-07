
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int GPIO_GFER ;
 int GPIO_GRER ;
 unsigned int GPIO_IRQ_falling_edge ;
 unsigned int GPIO_IRQ_mask ;
 unsigned int GPIO_IRQ_rising_edge ;
 unsigned int GPIO_MASK (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void puv3_high_gpio_unmask(struct irq_data *d)
{
 unsigned int mask = GPIO_MASK(d->irq);

 GPIO_IRQ_mask |= mask;

 writel(GPIO_IRQ_rising_edge & GPIO_IRQ_mask, GPIO_GRER);
 writel(GPIO_IRQ_falling_edge & GPIO_IRQ_mask, GPIO_GFER);
}
