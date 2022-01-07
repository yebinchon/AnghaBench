
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int GPIO_PTB6 ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void mmc_spi_setpower(struct device *dev, unsigned int maskval)
{
 gpio_set_value(GPIO_PTB6, maskval ? 1 : 0);
}
