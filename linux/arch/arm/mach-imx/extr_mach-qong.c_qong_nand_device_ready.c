
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int IOMUX_TO_GPIO (int ) ;
 int MX31_PIN_NFRB ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int qong_nand_device_ready(struct nand_chip *chip)
{
 return gpio_get_value(IOMUX_TO_GPIO(MX31_PIN_NFRB));
}
