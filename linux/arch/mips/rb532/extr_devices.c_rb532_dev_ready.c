
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int GPIO_RDY ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int rb532_dev_ready(struct nand_chip *chip)
{
 return gpio_get_value(GPIO_RDY);
}
