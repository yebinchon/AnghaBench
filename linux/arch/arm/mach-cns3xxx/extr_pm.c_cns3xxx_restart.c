
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int CNS3XXX_PWR_SOFTWARE_RST (int ) ;
 int GLOBAL ;
 int cns3xxx_pwr_soft_rst (int ) ;

void cns3xxx_restart(enum reboot_mode mode, const char *cmd)
{




 cns3xxx_pwr_soft_rst(CNS3XXX_PWR_SOFTWARE_RST(GLOBAL));
}
