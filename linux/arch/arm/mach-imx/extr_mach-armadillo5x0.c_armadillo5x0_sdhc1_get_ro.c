
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IOMUX_TO_GPIO (int ) ;
 int MX31_PIN_ATA_RESET_B ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int armadillo5x0_sdhc1_get_ro(struct device *dev)
{
 return gpio_get_value(IOMUX_TO_GPIO(MX31_PIN_ATA_RESET_B));
}
