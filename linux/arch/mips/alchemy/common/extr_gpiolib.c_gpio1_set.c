
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int ALCHEMY_GPIO1_BASE ;
 int alchemy_gpio1_set_value (unsigned int,int) ;

__attribute__((used)) static void gpio1_set(struct gpio_chip *chip,
    unsigned offset, int value)
{
 alchemy_gpio1_set_value(offset + ALCHEMY_GPIO1_BASE, value);
}
