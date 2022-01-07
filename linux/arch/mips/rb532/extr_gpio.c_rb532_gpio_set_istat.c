
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ regbase; } ;


 scalar_t__ GPIOISTAT ;
 TYPE_1__* rb532_gpio_chip ;
 int rb532_set_bit (int,unsigned int,scalar_t__) ;

void rb532_gpio_set_istat(int bit, unsigned gpio)
{
 rb532_set_bit(bit, gpio, rb532_gpio_chip->regbase + GPIOISTAT);
}
