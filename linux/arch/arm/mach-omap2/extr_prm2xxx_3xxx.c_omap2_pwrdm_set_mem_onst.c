
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int prcm_offs; } ;


 int OMAP2_PM_PWSTCTRL ;
 int __ffs (int ) ;
 int omap2_prm_rmw_mod_reg_bits (int ,int,int ,int ) ;
 int omap2_pwrdm_get_mem_bank_onstate_mask (int) ;

int omap2_pwrdm_set_mem_onst(struct powerdomain *pwrdm, u8 bank,
        u8 pwrst)
{
 u32 m;

 m = omap2_pwrdm_get_mem_bank_onstate_mask(bank);

 omap2_prm_rmw_mod_reg_bits(m, (pwrst << __ffs(m)), pwrdm->prcm_offs,
       OMAP2_PM_PWSTCTRL);

 return 0;
}
