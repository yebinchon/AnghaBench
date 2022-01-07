
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb532_gpio_chip {scalar_t__ regbase; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GPIOD ;
 struct rb532_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int rb532_get_bit (unsigned int,scalar_t__) ;

__attribute__((used)) static int rb532_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct rb532_gpio_chip *gpch;

 gpch = gpiochip_get_data(chip);
 return !!rb532_get_bit(offset, gpch->regbase + GPIOD);
}
