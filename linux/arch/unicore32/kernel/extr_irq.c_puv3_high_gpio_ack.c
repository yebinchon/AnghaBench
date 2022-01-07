
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int GPIO_GEDR ;
 unsigned int GPIO_MASK (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void puv3_high_gpio_ack(struct irq_data *d)
{
 unsigned int mask = GPIO_MASK(d->irq);

 writel(mask, GPIO_GEDR);
}
