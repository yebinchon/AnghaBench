
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int simpad_clear_cs3_bit (int) ;
 int simpad_set_cs3_bit (int) ;

__attribute__((used)) static void cs3_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 if (offset > 15)
  return;
 if (value)
  simpad_set_cs3_bit(1 << offset);
 else
  simpad_clear_cs3_bit(1 << offset);
}
