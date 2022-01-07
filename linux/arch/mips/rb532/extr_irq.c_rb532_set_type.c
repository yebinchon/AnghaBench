
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int EINVAL ;
 int GPIO_MAPPED_IRQ_BASE ;
 int GPIO_MAPPED_IRQ_GROUP ;
 scalar_t__ GROUP4_IRQ_BASE ;


 int irq_to_group (int) ;
 int rb532_gpio_set_ilevel (int,int) ;

__attribute__((used)) static int rb532_set_type(struct irq_data *d, unsigned type)
{
 int gpio = d->irq - GPIO_MAPPED_IRQ_BASE;
 int group = irq_to_group(d->irq);

 if (group != GPIO_MAPPED_IRQ_GROUP || d->irq > (GROUP4_IRQ_BASE + 13))
  return (type == 129) ? 0 : -EINVAL;

 switch (type) {
 case 129:
  rb532_gpio_set_ilevel(1, gpio);
  break;
 case 128:
  rb532_gpio_set_ilevel(0, gpio);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
