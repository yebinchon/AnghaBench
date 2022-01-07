
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int* IOP3XX_PCSR ;
 int soft_restart (int ) ;

void iop3xx_restart(enum reboot_mode mode, const char *cmd)
{
 *IOP3XX_PCSR = 0x30;


 soft_restart(0);
}
