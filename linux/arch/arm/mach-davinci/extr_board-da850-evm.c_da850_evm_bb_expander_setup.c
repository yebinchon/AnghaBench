
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int da850_evm_bb_keys_device ;
 int da850_evm_bb_keys_init (unsigned int) ;
 int da850_evm_bb_leds_device ;
 int da850_evm_bb_leds_gpio_table ;
 int gpiod_add_lookup_table (int *) ;
 int platform_device_register (int *) ;
 int platform_device_unregister (int *) ;
 int pr_warn (char*) ;

__attribute__((used)) static int da850_evm_bb_expander_setup(struct i2c_client *client,
      unsigned gpio, unsigned ngpio,
      void *c)
{
 int ret;





 da850_evm_bb_keys_init(gpio);
 ret = platform_device_register(&da850_evm_bb_keys_device);
 if (ret) {
  pr_warn("Could not register baseboard GPIO expander keys");
  goto io_exp_setup_sw_fail;
 }

 gpiod_add_lookup_table(&da850_evm_bb_leds_gpio_table);
 ret = platform_device_register(&da850_evm_bb_leds_device);
 if (ret) {
  pr_warn("Could not register baseboard GPIO expander LEDs");
  goto io_exp_setup_leds_fail;
 }

 return 0;

io_exp_setup_leds_fail:
 platform_device_unregister(&da850_evm_bb_keys_device);
io_exp_setup_sw_fail:
 return ret;
}
