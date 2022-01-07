
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int TS5500_LED ;
 int TS5500_LED_JP_ADDR ;
 int inb (int ) ;

__attribute__((used)) static enum led_brightness ts5500_led_get(struct led_classdev *led_cdev)
{
 return (inb(TS5500_LED_JP_ADDR) & TS5500_LED) ? LED_FULL : LED_OFF;
}
