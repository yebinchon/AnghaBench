
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int soft_restart (int) ;

__attribute__((used)) static void ebsa110_restart(enum reboot_mode mode, const char *cmd)
{
 soft_restart(0x80000000);
}
