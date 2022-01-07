
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4430_LASTPOWERSTATEENTERED_MASK ;
 int OMAP4_PM_PWSTST ;
 int omap4_prminst_rmw_inst_reg_bits (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_clear_all_prev_pwrst(struct powerdomain *pwrdm)
{
 omap4_prminst_rmw_inst_reg_bits(OMAP4430_LASTPOWERSTATEENTERED_MASK,
     OMAP4430_LASTPOWERSTATEENTERED_MASK,
     pwrdm->prcm_partition,
     pwrdm->prcm_offs, OMAP4_PM_PWSTST);
 return 0;
}
