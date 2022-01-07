
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int ALCHEMY_GPIO1_BASE ;
 int alchemy_gpio1_to_irq (unsigned int) ;

__attribute__((used)) static int gpio1_to_irq(struct gpio_chip *chip, unsigned offset)
{
 return alchemy_gpio1_to_irq(offset + ALCHEMY_GPIO1_BASE);
}
