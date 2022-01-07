
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct powerdomain {int prcm_offs; int prcm_partition; } ;


 int OMAP4_PM_PWSTCTRL ;
 int OMAP_POWERSTATE_MASK ;
 int OMAP_POWERSTATE_SHIFT ;
 int omap4_prminst_read_inst_reg (int ,int ,int ) ;

__attribute__((used)) static int omap4_pwrdm_read_next_pwrst(struct powerdomain *pwrdm)
{
 u32 v;

 v = omap4_prminst_read_inst_reg(pwrdm->prcm_partition, pwrdm->prcm_offs,
     OMAP4_PM_PWSTCTRL);
 v &= OMAP_POWERSTATE_MASK;
 v >>= OMAP_POWERSTATE_SHIFT;

 return v;
}
