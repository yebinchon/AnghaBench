
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct ar8327_led {int enable_hw_mode; int lock; } ;


 int AR8327_LED_PATTERN_BLINK ;
 int EINVAL ;
 int ar8327_led_schedule_change (struct ar8327_led*,int ) ;
 struct ar8327_led* led_cdev_to_ar8327_led (struct led_classdev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
ar8327_led_blink_set(struct led_classdev *led_cdev,
       unsigned long *delay_on,
       unsigned long *delay_off)
{
 struct ar8327_led *aled = led_cdev_to_ar8327_led(led_cdev);

 if (*delay_on == 0 && *delay_off == 0) {
  *delay_on = 125;
  *delay_off = 125;
 }

 if (*delay_on != 125 || *delay_off != 125) {




  return -EINVAL;
 }

 spin_lock(&aled->lock);

 aled->enable_hw_mode = 0;
 ar8327_led_schedule_change(aled, AR8327_LED_PATTERN_BLINK);

 spin_unlock(&aled->lock);

 return 0;
}
