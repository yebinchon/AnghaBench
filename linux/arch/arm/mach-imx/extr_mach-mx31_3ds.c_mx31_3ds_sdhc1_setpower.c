
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MX31_3DS_GPIO_SDHC1_BE ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void mx31_3ds_sdhc1_setpower(struct device *dev, unsigned int vdd)
{
 if (vdd > 7)
  gpio_set_value(MX31_3DS_GPIO_SDHC1_BE, 1);
 else
  gpio_set_value(MX31_3DS_GPIO_SDHC1_BE, 0);
}
