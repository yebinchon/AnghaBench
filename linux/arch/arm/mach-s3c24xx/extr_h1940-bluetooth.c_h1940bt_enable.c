
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_LED_BLINK ;
 int GPIO_LED_NO_BLINK_LOW ;
 int H1940_LATCH_BLUETOOTH_POWER ;
 int S3C2410_GPH (int) ;
 int gpio_set_value (int ,int) ;
 int h1940_led_blink_set (int *,int ,int *,int *) ;
 int mdelay (int) ;

__attribute__((used)) static void h1940bt_enable(int on)
{
 if (on) {

  gpio_set_value(H1940_LATCH_BLUETOOTH_POWER, 1);

  mdelay(10);

  gpio_set_value(S3C2410_GPH(1), 1);
  mdelay(10);
  gpio_set_value(S3C2410_GPH(1), 0);

  h1940_led_blink_set(((void*)0), GPIO_LED_BLINK, ((void*)0), ((void*)0));
 }
 else {
  gpio_set_value(S3C2410_GPH(1), 1);
  mdelay(10);
  gpio_set_value(S3C2410_GPH(1), 0);
  mdelay(10);
  gpio_set_value(H1940_LATCH_BLUETOOTH_POWER, 0);

  h1940_led_blink_set(((void*)0), GPIO_LED_NO_BLINK_LOW, ((void*)0), ((void*)0));
 }
}
