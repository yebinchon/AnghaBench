
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int REBOOT_SOFT ;
 int mioa701_machine_exit () ;
 int pxa_restart (int ,char const*) ;

__attribute__((used)) static void mioa701_restart(enum reboot_mode c, const char *cmd)
{
 mioa701_machine_exit();
 pxa_restart(REBOOT_SOFT, cmd);
}
