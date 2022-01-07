
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int simpad_get_cs3_ro () ;
 int simpad_get_cs3_shadow () ;

__attribute__((used)) static int cs3_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 if (offset > 15)
  return !!(simpad_get_cs3_ro() & (1 << (offset - 16)));
 return !!(simpad_get_cs3_shadow() & (1 << offset));
}
