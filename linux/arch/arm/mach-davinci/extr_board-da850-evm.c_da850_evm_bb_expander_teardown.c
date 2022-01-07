
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int da850_evm_bb_keys_device ;
 int da850_evm_bb_leds_device ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static int da850_evm_bb_expander_teardown(struct i2c_client *client,
     unsigned gpio, unsigned ngpio, void *c)
{
 platform_device_unregister(&da850_evm_bb_leds_device);
 platform_device_unregister(&da850_evm_bb_keys_device);

 return 0;
}
