
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPITZ_GPIO_KEY_INT ;
 int SPITZ_GPIO_SYNC ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static bool spitz_charger_wakeup(void)
{
 return !gpio_get_value(SPITZ_GPIO_KEY_INT) ||
  gpio_get_value(SPITZ_GPIO_SYNC);
}
