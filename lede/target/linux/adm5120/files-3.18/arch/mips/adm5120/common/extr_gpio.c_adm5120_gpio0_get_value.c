
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int __adm5120_gpio0_get_value (unsigned int) ;

__attribute__((used)) static int adm5120_gpio0_get_value(struct gpio_chip *chip, unsigned offset)
{
 return __adm5120_gpio0_get_value(offset);
}
