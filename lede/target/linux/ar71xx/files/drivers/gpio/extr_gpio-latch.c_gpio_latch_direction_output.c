
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_latch_chip {int* gpios; int le_gpio; int le_active_low; } ;
struct gpio_chip {int dummy; } ;


 int gpio_direction_output (int,int) ;
 int gpio_latch_lock (struct gpio_latch_chip*,int) ;
 int gpio_latch_unlock (struct gpio_latch_chip*,int) ;
 struct gpio_latch_chip* to_gpio_latch_chip (struct gpio_chip*) ;

__attribute__((used)) static int
gpio_latch_direction_output(struct gpio_chip *gc, unsigned offset, int value)
{
 struct gpio_latch_chip *glc = to_gpio_latch_chip(gc);
 bool enable_latch = 0;
 bool disable_latch = 0;
 int gpio;
 int ret;

 gpio = glc->gpios[offset];

 if (gpio == glc->le_gpio) {
  enable_latch = value ^ glc->le_active_low;
  disable_latch = !enable_latch;
 }

 gpio_latch_lock(glc, enable_latch);
 ret = gpio_direction_output(gpio, value);
 gpio_latch_unlock(glc, disable_latch);

 return ret;
}
