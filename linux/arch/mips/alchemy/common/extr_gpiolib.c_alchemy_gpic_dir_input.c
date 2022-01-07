
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 scalar_t__ AU1300_GPIO_BASE ;
 int au1300_gpio_direction_input (scalar_t__) ;

__attribute__((used)) static int alchemy_gpic_dir_input(struct gpio_chip *chip, unsigned int off)
{
 return au1300_gpio_direction_input(off + AU1300_GPIO_BASE);
}
