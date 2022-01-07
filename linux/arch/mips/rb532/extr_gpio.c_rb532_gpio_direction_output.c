
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb532_gpio_chip {scalar_t__ regbase; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GPIOCFG ;
 scalar_t__ GPIOD ;
 scalar_t__ GPIOFUNC ;
 struct rb532_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int rb532_set_bit (int,unsigned int,scalar_t__) ;

__attribute__((used)) static int rb532_gpio_direction_output(struct gpio_chip *chip,
     unsigned offset, int value)
{
 struct rb532_gpio_chip *gpch;

 gpch = gpiochip_get_data(chip);


 rb532_set_bit(0, offset, gpch->regbase + GPIOFUNC);


 rb532_set_bit(value, offset, gpch->regbase + GPIOD);

 rb532_set_bit(1, offset, gpch->regbase + GPIOCFG);
 return 0;
}
