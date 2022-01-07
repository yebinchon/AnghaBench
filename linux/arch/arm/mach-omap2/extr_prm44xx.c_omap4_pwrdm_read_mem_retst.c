
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4_PM_PWSTCTRL ;
 int __ffs (int) ;
 int omap2_pwrdm_get_mem_bank_retst_mask (int ) ;
 int omap4_prminst_read_inst_reg (int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_read_mem_retst(struct powerdomain *pwrdm, u8 bank)
{
 u32 m, v;

 m = omap2_pwrdm_get_mem_bank_retst_mask(bank);

 v = omap4_prminst_read_inst_reg(pwrdm->prcm_partition, pwrdm->prcm_offs,
     OMAP4_PM_PWSTCTRL);
 v &= m;
 v >>= __ffs(m);

 return v;
}
