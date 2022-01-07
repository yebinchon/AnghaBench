
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {scalar_t__ prcm_offs; } ;


 int OMAP_POWERSTATEST_MASK ;
 scalar_t__ TI814X_PRM_GFX_MOD ;
 int TI81XX_PM_PWSTST ;
 int TI81XX_RM_RSTCTRL ;
 int omap2_prm_read_mod_bits_shift (scalar_t__,int ,int ) ;

__attribute__((used)) static int ti81xx_pwrdm_read_pwrst(struct powerdomain *pwrdm)
{
 return omap2_prm_read_mod_bits_shift(pwrdm->prcm_offs,
  (pwrdm->prcm_offs == TI814X_PRM_GFX_MOD) ? TI81XX_RM_RSTCTRL :
          TI81XX_PM_PWSTST,
          OMAP_POWERSTATEST_MASK);
}
