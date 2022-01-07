
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int CORGI_GPIO_LED_GREEN ;
 int REBOOT_HARD ;
 int gpio_set_value (int ,int) ;
 int machine_is_corgi () ;
 int pxa_restart (int ,char const*) ;

__attribute__((used)) static void corgi_restart(enum reboot_mode mode, const char *cmd)
{
 if (!machine_is_corgi())

  gpio_set_value(CORGI_GPIO_LED_GREEN, 1);

 pxa_restart(REBOOT_HARD, cmd);
}
