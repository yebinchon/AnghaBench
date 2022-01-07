
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int BLINK ;
 int CONFIG_TPS65010 ;
 int ENOSYS ;
 int GPIO2 ;
 int HIGH ;
 int IS_BUILTIN (int ) ;
 int LED1 ;
 int LED2 ;
 int OFF ;
 int ON ;
 int OSK_TPS_GPIO_DSP_PWR_EN ;
 int OSK_TPS_GPIO_LAN_RESET ;
 int OSK_TPS_GPIO_USB_PWR_EN ;
 int TPS_LDO1_ENABLE ;
 int TPS_LDO2_ENABLE ;
 int TPS_VLDO2_3_0V ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;
 TYPE_2__ osk5912_tps_leds ;
 int platform_device_register (TYPE_2__*) ;
 int tps65010_config_vregs1 (int) ;
 int tps65010_set_gpio_out_value (int ,int ) ;
 int tps65010_set_led (int ,int ) ;
 int tps65010_set_low_pwr (int ) ;

__attribute__((used)) static int osk_tps_setup(struct i2c_client *client, void *context)
{
 if (!IS_BUILTIN(CONFIG_TPS65010))
  return -ENOSYS;




 gpio_request(OSK_TPS_GPIO_USB_PWR_EN, "n_vbus_en");
 gpio_direction_output(OSK_TPS_GPIO_USB_PWR_EN, 1);


 tps65010_set_gpio_out_value(GPIO2, HIGH);


 gpio_request(OSK_TPS_GPIO_LAN_RESET, "smc_reset");
 gpio_direction_output(OSK_TPS_GPIO_LAN_RESET, 0);


 gpio_request(OSK_TPS_GPIO_DSP_PWR_EN, "dsp_power");
 gpio_direction_output(OSK_TPS_GPIO_DSP_PWR_EN, 1);



 tps65010_set_led(LED1, BLINK);


 tps65010_set_led(LED2, OFF);


 tps65010_set_low_pwr(ON);


 tps65010_config_vregs1(TPS_LDO2_ENABLE | TPS_VLDO2_3_0V
   | TPS_LDO1_ENABLE);


 osk5912_tps_leds.dev.parent = &client->dev;
 platform_device_register(&osk5912_tps_leds);

 return 0;
}
