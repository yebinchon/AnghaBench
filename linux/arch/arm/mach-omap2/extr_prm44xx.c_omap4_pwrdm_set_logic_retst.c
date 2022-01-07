
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4430_LOGICRETSTATE_MASK ;
 int OMAP4_PM_PWSTCTRL ;
 int __ffs (int ) ;
 int omap4_prminst_rmw_inst_reg_bits (int ,int,int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_set_logic_retst(struct powerdomain *pwrdm, u8 pwrst)
{
 u32 v;

 v = pwrst << __ffs(OMAP4430_LOGICRETSTATE_MASK);
 omap4_prminst_rmw_inst_reg_bits(OMAP4430_LOGICRETSTATE_MASK, v,
     pwrdm->prcm_partition, pwrdm->prcm_offs,
     OMAP4_PM_PWSTCTRL);

 return 0;
}
