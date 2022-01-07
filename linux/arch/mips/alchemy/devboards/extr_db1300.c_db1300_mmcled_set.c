
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int BCSR_LEDS ;
 int BCSR_LEDS_LED0 ;
 int LED_OFF ;
 int bcsr_mod (int ,int ,int ) ;

__attribute__((used)) static void db1300_mmcled_set(struct led_classdev *led,
         enum led_brightness brightness)
{
 if (brightness != LED_OFF)
  bcsr_mod(BCSR_LEDS, BCSR_LEDS_LED0, 0);
 else
  bcsr_mod(BCSR_LEDS, 0, BCSR_LEDS_LED0);
}
