
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;





 unsigned long ORION_BLINK_HALF_PERIOD ;
 unsigned int desc_to_gpio (struct gpio_desc*) ;
 int gpio_set_value (unsigned int,int) ;
 int orion_gpio_set_blink (unsigned int,int) ;

int orion_gpio_led_blink_set(struct gpio_desc *desc, int state,
 unsigned long *delay_on, unsigned long *delay_off)
{
 unsigned gpio = desc_to_gpio(desc);

 if (delay_on && delay_off && !*delay_on && !*delay_off)
  *delay_on = *delay_off = ORION_BLINK_HALF_PERIOD;

 switch (state) {
 case 128:
 case 129:
  orion_gpio_set_blink(gpio, 0);
  gpio_set_value(gpio, state);
  break;
 case 130:
  orion_gpio_set_blink(gpio, 1);
 }
 return 0;
}
