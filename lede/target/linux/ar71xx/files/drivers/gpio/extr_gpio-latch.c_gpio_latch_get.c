
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_latch_chip {int * gpios; } ;
struct gpio_chip {int dummy; } ;


 int gpio_get_value (int ) ;
 int gpio_latch_lock (struct gpio_latch_chip*,int) ;
 int gpio_latch_unlock (struct gpio_latch_chip*,int) ;
 struct gpio_latch_chip* to_gpio_latch_chip (struct gpio_chip*) ;

__attribute__((used)) static int
gpio_latch_get(struct gpio_chip *gc, unsigned offset)
{
 struct gpio_latch_chip *glc = to_gpio_latch_chip(gc);
 int ret;

 gpio_latch_lock(glc, 0);
 ret = gpio_get_value(glc->gpios[offset]);
 gpio_latch_unlock(glc, 0);

 return ret;
}
