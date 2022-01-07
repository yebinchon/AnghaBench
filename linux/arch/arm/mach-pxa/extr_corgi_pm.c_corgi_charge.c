
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CORGI_GPIO_CHRG_ON ;
 int CORGI_GPIO_CHRG_UKN ;
 int SHARPSL_SUSPENDED ;
 int gpio_set_value (int ,int) ;
 scalar_t__ machine_is_corgi () ;
 TYPE_1__ sharpsl_pm ;

__attribute__((used)) static void corgi_charge(int on)
{
 if (on) {
  if (machine_is_corgi() && (sharpsl_pm.flags & SHARPSL_SUSPENDED)) {
   gpio_set_value(CORGI_GPIO_CHRG_ON, 0);
   gpio_set_value(CORGI_GPIO_CHRG_UKN, 1);
  } else {
   gpio_set_value(CORGI_GPIO_CHRG_ON, 1);
   gpio_set_value(CORGI_GPIO_CHRG_UKN, 0);
  }
 } else {
  gpio_set_value(CORGI_GPIO_CHRG_ON, 0);
  gpio_set_value(CORGI_GPIO_CHRG_UKN, 0);
 }
}
