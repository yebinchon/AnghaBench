
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 unsigned int latch_state ;

__attribute__((used)) static int h1940_gpiolib_latch_get(struct gpio_chip *chip,
     unsigned offset)
{
 return (latch_state >> (offset + 16)) & 1;
}
