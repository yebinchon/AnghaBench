
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int ALCHEMY_GPIO2_BASE ;
 int alchemy_gpio2_set_value (unsigned int,int) ;

__attribute__((used)) static void gpio2_set(struct gpio_chip *chip, unsigned offset, int value)
{
 alchemy_gpio2_set_value(offset + ALCHEMY_GPIO2_BASE, value);
}
