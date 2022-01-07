
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 int ARM_RSTCT1 ;
 int DPLL_CTL ;
 scalar_t__ cpu_is_omap5912 () ;
 int omap_readw (int ) ;
 int omap_writew (int,int ) ;

void omap1_restart(enum reboot_mode mode, const char *cmd)
{




 if (cpu_is_omap5912()) {
  omap_writew(omap_readw(DPLL_CTL) & ~(1 << 4), DPLL_CTL);
  omap_writew(0x8, ARM_RSTCT1);
 }

 omap_writew(1, ARM_RSTCT1);
}
