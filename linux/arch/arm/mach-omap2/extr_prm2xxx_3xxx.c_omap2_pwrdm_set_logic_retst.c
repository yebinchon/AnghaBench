
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int prcm_offs; } ;


 int OMAP2_PM_PWSTCTRL ;
 int OMAP_LOGICRETSTATE_MASK ;
 int __ffs (int ) ;
 int omap2_prm_rmw_mod_reg_bits (int ,int,int ,int ) ;

int omap2_pwrdm_set_logic_retst(struct powerdomain *pwrdm, u8 pwrst)
{
 u32 v;

 v = pwrst << __ffs(OMAP_LOGICRETSTATE_MASK);
 omap2_prm_rmw_mod_reg_bits(OMAP_LOGICRETSTATE_MASK, v, pwrdm->prcm_offs,
       OMAP2_PM_PWSTCTRL);

 return 0;
}
