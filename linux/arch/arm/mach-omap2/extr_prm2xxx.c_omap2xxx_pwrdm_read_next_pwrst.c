
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int prcm_offs; } ;


 int OMAP2_PM_PWSTCTRL ;
 int OMAP_POWERSTATE_MASK ;
 int omap2_prm_read_mod_bits_shift (int ,int ,int ) ;
 int omap2xxx_pwrst_to_common_pwrst (int ) ;

__attribute__((used)) static int omap2xxx_pwrdm_read_next_pwrst(struct powerdomain *pwrdm)
{
 u8 omap2xxx_pwrst;

 omap2xxx_pwrst = omap2_prm_read_mod_bits_shift(pwrdm->prcm_offs,
             OMAP2_PM_PWSTCTRL,
             OMAP_POWERSTATE_MASK);

 return omap2xxx_pwrst_to_common_pwrst(omap2xxx_pwrst);
}
