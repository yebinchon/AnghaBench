
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mm_gpio_chip {int regs; } ;
struct gpio_chip {int dummy; } ;


 int in_8 (int ) ;
 struct of_mm_gpio_chip* to_of_mm_gpio_chip (struct gpio_chip*) ;
 int u8_pin2mask (unsigned int) ;

__attribute__((used)) static int u8_gpio_get(struct gpio_chip *gc, unsigned int gpio)
{
 struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);

 return !!(in_8(mm_gc->regs) & u8_pin2mask(gpio));
}
