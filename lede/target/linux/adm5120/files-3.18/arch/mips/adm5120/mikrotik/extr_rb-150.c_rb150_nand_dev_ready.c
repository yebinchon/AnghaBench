
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int RB150_GPIO_NAND_READY ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int rb150_nand_dev_ready(struct mtd_info *mtd)
{
 return gpio_get_value(RB150_GPIO_NAND_READY);
}
