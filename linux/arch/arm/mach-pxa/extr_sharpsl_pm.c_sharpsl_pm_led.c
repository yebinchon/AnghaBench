
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int LED_FULL ;
 int LED_OFF ;
 int SHARPSL_LED_ERROR ;
 int SHARPSL_LED_ON ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int led_trigger_event (int ,int ) ;
 int sharpsl_charge_led_trigger ;
 TYPE_1__ sharpsl_pm ;

void sharpsl_pm_led(int val)
{
 if (val == SHARPSL_LED_ERROR) {
  dev_err(sharpsl_pm.dev, "Charging Error!\n");
 } else if (val == SHARPSL_LED_ON) {
  dev_dbg(sharpsl_pm.dev, "Charge LED On\n");
  led_trigger_event(sharpsl_charge_led_trigger, LED_FULL);
 } else {
  dev_dbg(sharpsl_pm.dev, "Charge LED Off\n");
  led_trigger_event(sharpsl_charge_led_trigger, LED_OFF);
 }
}
