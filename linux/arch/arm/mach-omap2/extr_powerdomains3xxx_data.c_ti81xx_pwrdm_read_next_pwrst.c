
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int prcm_offs; } ;


 int OMAP_POWERSTATE_MASK ;
 int TI81XX_PM_PWSTCTRL ;
 int omap2_prm_read_mod_bits_shift (int ,int ,int ) ;

__attribute__((used)) static int ti81xx_pwrdm_read_next_pwrst(struct powerdomain *pwrdm)
{
 return omap2_prm_read_mod_bits_shift(pwrdm->prcm_offs,
          TI81XX_PM_PWSTCTRL,
          OMAP_POWERSTATE_MASK);
}
