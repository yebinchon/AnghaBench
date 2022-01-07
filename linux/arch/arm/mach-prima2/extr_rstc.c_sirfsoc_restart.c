
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int SIRFSOC_SYS_RST_BIT ;
 int sirfsoc_rstc_base ;
 int writel (int ,int ) ;

__attribute__((used)) static void sirfsoc_restart(enum reboot_mode mode, const char *cmd)
{
 writel(SIRFSOC_SYS_RST_BIT, sirfsoc_rstc_base);
}
