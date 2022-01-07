
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int __adm5120_gpio1_set_value (unsigned int,int) ;

__attribute__((used)) static int adm5120_gpio1_direction_output(struct gpio_chip *chip,
       unsigned offset, int value)
{
 __adm5120_gpio1_set_value(offset, value);
 return 0;
}
