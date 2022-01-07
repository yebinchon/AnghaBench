
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int ALCHEMY_GPIO2_BASE ;
 int alchemy_gpio2_get_value (unsigned int) ;

__attribute__((used)) static int gpio2_get(struct gpio_chip *chip, unsigned offset)
{
 return !!alchemy_gpio2_get_value(offset + ALCHEMY_GPIO2_BASE);
}
