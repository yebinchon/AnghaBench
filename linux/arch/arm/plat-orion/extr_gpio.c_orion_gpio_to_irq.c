
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_gpio_chip {unsigned int secondary_irq_base; int domain; } ;
struct gpio_chip {int dummy; } ;


 struct orion_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int orion_gpio_to_irq(struct gpio_chip *chip, unsigned pin)
{
 struct orion_gpio_chip *ochip = gpiochip_get_data(chip);

 return irq_create_mapping(ochip->domain,
      ochip->secondary_irq_base + pin);
}
