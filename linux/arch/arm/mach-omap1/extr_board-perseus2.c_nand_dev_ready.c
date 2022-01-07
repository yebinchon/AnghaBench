
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int P2_NAND_RB_GPIO_PIN ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int nand_dev_ready(struct nand_chip *chip)
{
 return gpio_get_value(P2_NAND_RB_GPIO_PIN);
}
