
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_DATA_LO_REG ;
 int GPIO_DATA_LO_REG_6345 ;
 int bcm63xx_get_cpu_id () ;
 int gpio_out_low_reg ;

__attribute__((used)) static void bcm63xx_gpio_out_low_reg_init(void)
{
 switch (bcm63xx_get_cpu_id()) {
 case 128:
  gpio_out_low_reg = GPIO_DATA_LO_REG_6345;
  break;
 default:
  gpio_out_low_reg = GPIO_DATA_LO_REG;
  break;
 }
}
