
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int IOMD_ROMCR0 ;
 int iomd_writeb (int ,int ) ;
 int soft_restart (int ) ;

__attribute__((used)) static void rpc_restart(enum reboot_mode mode, const char *cmd)
{
 iomd_writeb(0, IOMD_ROMCR0);




 soft_restart(0);
}
