
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int prcm_offs; } ;


 int OMAP2_PM_PWSTCTRL ;
 int omap2_prm_read_mod_bits_shift (int ,int ,int ) ;
 int omap2_pwrdm_get_mem_bank_retst_mask (int ) ;

int omap2_pwrdm_read_mem_retst(struct powerdomain *pwrdm, u8 bank)
{
 u32 m;

 m = omap2_pwrdm_get_mem_bank_retst_mask(bank);

 return omap2_prm_read_mod_bits_shift(pwrdm->prcm_offs,
          OMAP2_PM_PWSTCTRL, m);
}
