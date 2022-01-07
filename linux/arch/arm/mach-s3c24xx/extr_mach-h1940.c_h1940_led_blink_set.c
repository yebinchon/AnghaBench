
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int EINVAL ;



 int H1940_LATCH_LED_FLASH ;


 int S3C2410_GPA (int) ;
 int desc_to_gpio (struct gpio_desc*) ;
 int gpio_get_value (int) ;
 int gpio_is_valid (int) ;
 int gpio_set_value (int,int) ;
 int h1940_blink_spin ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int h1940_led_blink_set(struct gpio_desc *desc, int state,
 unsigned long *delay_on, unsigned long *delay_off)
{
 int blink_gpio, check_gpio1, check_gpio2;
 int gpio = desc ? desc_to_gpio(desc) : -EINVAL;

 switch (gpio) {
 case 129:
  blink_gpio = S3C2410_GPA(7);
  check_gpio1 = S3C2410_GPA(1);
  check_gpio2 = S3C2410_GPA(3);
  break;
 case 128:
  blink_gpio = S3C2410_GPA(1);
  check_gpio1 = S3C2410_GPA(7);
  check_gpio2 = S3C2410_GPA(3);
  break;
 default:
  blink_gpio = S3C2410_GPA(3);
  check_gpio1 = S3C2410_GPA(1);
  check_gpio2 = S3C2410_GPA(7);
  break;
 }

 if (delay_on && delay_off && !*delay_on && !*delay_off)
  *delay_on = *delay_off = 500;

 spin_lock(&h1940_blink_spin);

 switch (state) {
 case 130:
 case 131:
  if (!gpio_get_value(check_gpio1) &&
      !gpio_get_value(check_gpio2))
   gpio_set_value(H1940_LATCH_LED_FLASH, 0);
  gpio_set_value(blink_gpio, 0);
  if (gpio_is_valid(gpio))
   gpio_set_value(gpio, state);
  break;
 case 132:
  if (gpio_is_valid(gpio))
   gpio_set_value(gpio, 0);
  gpio_set_value(H1940_LATCH_LED_FLASH, 1);
  gpio_set_value(blink_gpio, 1);
  break;
 }

 spin_unlock(&h1940_blink_spin);

 return 0;
}
