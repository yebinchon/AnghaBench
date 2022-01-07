
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alchemy_gpio_get_value (int) ;

__attribute__((used)) static int db1100_mmc_card_inserted(void *mmc_host)
{
 return !alchemy_gpio_get_value(19);
}
