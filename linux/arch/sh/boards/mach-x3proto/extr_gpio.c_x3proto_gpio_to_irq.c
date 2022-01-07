
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int ngpio; } ;


 int ENXIO ;
 int irq_create_mapping (int ,unsigned int) ;
 int x3proto_irq_domain ;

__attribute__((used)) static int x3proto_gpio_to_irq(struct gpio_chip *chip, unsigned gpio)
{
 int virq;

 if (gpio < chip->ngpio)
  virq = irq_create_mapping(x3proto_irq_domain, gpio);
 else
  virq = -ENXIO;

 return virq;
}
