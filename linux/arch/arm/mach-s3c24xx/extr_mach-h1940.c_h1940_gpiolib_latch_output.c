
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int h1940_gpiolib_latch_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int h1940_gpiolib_latch_output(struct gpio_chip *chip,
     unsigned offset, int value)
{
 h1940_gpiolib_latch_set(chip, offset, value);
 return 0;
}
