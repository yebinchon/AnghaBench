
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int N2100_HARDWARE_RESET ;
 int gpio_direction_output (int ,int ) ;
 int pr_crit (char*) ;

__attribute__((used)) static void n2100_restart(enum reboot_mode mode, const char *cmd)
{
 int ret;

 ret = gpio_direction_output(N2100_HARDWARE_RESET, 0);
 if (ret) {
  pr_crit("could not drive reset GPIO low\n");
  return;
 }

 while (1)
  ;
}
