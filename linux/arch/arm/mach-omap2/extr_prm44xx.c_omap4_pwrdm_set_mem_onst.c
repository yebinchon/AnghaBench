
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4_PM_PWSTCTRL ;
 int __ffs (int ) ;
 int omap2_pwrdm_get_mem_bank_onstate_mask (int) ;
 int omap4_prminst_rmw_inst_reg_bits (int ,int,int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_set_mem_onst(struct powerdomain *pwrdm, u8 bank,
        u8 pwrst)
{
 u32 m;

 m = omap2_pwrdm_get_mem_bank_onstate_mask(bank);

 omap4_prminst_rmw_inst_reg_bits(m, (pwrst << __ffs(m)),
     pwrdm->prcm_partition, pwrdm->prcm_offs,
     OMAP4_PM_PWSTCTRL);

 return 0;
}
