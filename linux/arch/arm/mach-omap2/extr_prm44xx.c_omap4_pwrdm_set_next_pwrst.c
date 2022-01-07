
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4_PM_PWSTCTRL ;
 int OMAP_POWERSTATE_MASK ;
 int OMAP_POWERSTATE_SHIFT ;
 int omap4_prminst_rmw_inst_reg_bits (int ,int,int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_set_next_pwrst(struct powerdomain *pwrdm, u8 pwrst)
{
 omap4_prminst_rmw_inst_reg_bits(OMAP_POWERSTATE_MASK,
     (pwrst << OMAP_POWERSTATE_SHIFT),
     pwrdm->prcm_partition,
     pwrdm->prcm_offs, OMAP4_PM_PWSTCTRL);
 return 0;
}
