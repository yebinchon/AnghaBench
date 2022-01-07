
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;


 int ar7_gpio_enable_titan (unsigned int) ;
 TYPE_1__ titan_gpio_chip ;
 int titan_gpio_direction_input (int *,unsigned int) ;
 int titan_gpio_pinsel (unsigned int) ;

__attribute__((used)) static void titan_gpio_init(void)
{
 unsigned i;

 for (i = 44; i < 48; i++) {
  titan_gpio_pinsel(i);
  ar7_gpio_enable_titan(i);
  titan_gpio_direction_input(&titan_gpio_chip.chip, i);
 }
}
