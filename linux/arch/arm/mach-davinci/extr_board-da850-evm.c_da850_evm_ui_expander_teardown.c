
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 unsigned int DA850_EVM_UI_EXP_SEL_A ;
 unsigned int DA850_EVM_UI_EXP_SEL_B ;
 unsigned int DA850_EVM_UI_EXP_SEL_C ;
 int da850_evm_ui_keys_device ;
 int gpio_free (unsigned int) ;
 int gpio_set_value_cansleep (unsigned int,int) ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static int da850_evm_ui_expander_teardown(struct i2c_client *client,
     unsigned gpio, unsigned ngpio, void *c)
{
 platform_device_unregister(&da850_evm_ui_keys_device);


 gpio_set_value_cansleep(gpio + DA850_EVM_UI_EXP_SEL_C, 1);
 gpio_set_value_cansleep(gpio + DA850_EVM_UI_EXP_SEL_B, 1);
 gpio_set_value_cansleep(gpio + DA850_EVM_UI_EXP_SEL_A, 1);

 gpio_free(gpio + DA850_EVM_UI_EXP_SEL_C);
 gpio_free(gpio + DA850_EVM_UI_EXP_SEL_B);
 gpio_free(gpio + DA850_EVM_UI_EXP_SEL_A);

 return 0;
}
