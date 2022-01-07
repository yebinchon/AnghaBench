
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CELLVISION_GPIO_FLASH_A20 ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void switch_bank_gpio5(unsigned bank)
{
 switch (bank) {
 case 0:
  gpio_set_value(CELLVISION_GPIO_FLASH_A20, 0);
  break;
 case 1:
  gpio_set_value(CELLVISION_GPIO_FLASH_A20, 1);
  break;
 }
}
