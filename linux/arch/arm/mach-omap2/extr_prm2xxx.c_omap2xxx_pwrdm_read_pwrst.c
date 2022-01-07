
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int prcm_offs; } ;


 int OMAP2_PM_PWSTST ;
 int OMAP_POWERSTATEST_MASK ;
 int omap2_prm_read_mod_bits_shift (int ,int ,int ) ;
 int omap2xxx_pwrst_to_common_pwrst (int ) ;

__attribute__((used)) static int omap2xxx_pwrdm_read_pwrst(struct powerdomain *pwrdm)
{
 u8 omap2xxx_pwrst;

 omap2xxx_pwrst = omap2_prm_read_mod_bits_shift(pwrdm->prcm_offs,
             OMAP2_PM_PWSTST,
             OMAP_POWERSTATEST_MASK);

 return omap2xxx_pwrst_to_common_pwrst(omap2xxx_pwrst);
}
