
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_AC_IN ;
 int CORGI_GPIO_KEY_INT ;
 int CORGI_GPIO_WAKEUP ;
 int gpio_get_value (int ) ;

__attribute__((used)) static bool corgi_charger_wakeup(void)
{
 return !gpio_get_value(CORGI_GPIO_AC_IN) ||
  !gpio_get_value(CORGI_GPIO_KEY_INT) ||
  !gpio_get_value(CORGI_GPIO_WAKEUP);
}
