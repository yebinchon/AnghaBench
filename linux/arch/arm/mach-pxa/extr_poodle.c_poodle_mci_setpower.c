
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_platform_data {int ocr_mask; } ;
struct device {struct pxamci_platform_data* platform_data; } ;


 int POODLE_GPIO_SD_PWR ;
 int POODLE_GPIO_SD_PWR1 ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int poodle_mci_setpower(struct device *dev, unsigned int vdd)
{
 struct pxamci_platform_data* p_d = dev->platform_data;

 if ((1 << vdd) & p_d->ocr_mask) {
  gpio_set_value(POODLE_GPIO_SD_PWR, 1);
  mdelay(2);
  gpio_set_value(POODLE_GPIO_SD_PWR1, 1);
 } else {
  gpio_set_value(POODLE_GPIO_SD_PWR1, 0);
  gpio_set_value(POODLE_GPIO_SD_PWR, 0);
 }

 return 0;
}
