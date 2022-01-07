
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb750_led_dev {int active_low; int mask; int (* latch_change ) (int ,int ) ;} ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 struct rb750_led_dev* to_rbled (struct led_classdev*) ;

__attribute__((used)) static void rb750_led_brightness_set(struct led_classdev *led_cdev,
         enum led_brightness value)
{
 struct rb750_led_dev *rbled = to_rbled(led_cdev);
 int level;

 level = (value == LED_OFF) ? 0 : 1;
 level ^= rbled->active_low;

 if (level)
  rbled->latch_change(0, rbled->mask);
 else
  rbled->latch_change(rbled->mask, 0);
}
