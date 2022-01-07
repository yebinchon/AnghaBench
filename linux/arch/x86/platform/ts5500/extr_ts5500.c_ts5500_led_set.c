
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int TS5500_LED_JP_ADDR ;
 int outb (int,int ) ;

__attribute__((used)) static void ts5500_led_set(struct led_classdev *led_cdev,
      enum led_brightness brightness)
{
 outb(!!brightness, TS5500_LED_JP_ADDR);
}
