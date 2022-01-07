
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4430_LOWPOWERSTATECHANGE_MASK ;
 int OMAP4430_LOWPOWERSTATECHANGE_SHIFT ;
 int OMAP4_PM_PWSTCTRL ;
 int omap4_prminst_rmw_inst_reg_bits (int ,int,int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_set_lowpwrstchange(struct powerdomain *pwrdm)
{
 omap4_prminst_rmw_inst_reg_bits(OMAP4430_LOWPOWERSTATECHANGE_MASK,
     (1 << OMAP4430_LOWPOWERSTATECHANGE_SHIFT),
     pwrdm->prcm_partition,
     pwrdm->prcm_offs, OMAP4_PM_PWSTCTRL);
 return 0;
}
