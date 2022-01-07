
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct powerdomain {int name; int prcm_offs; int prcm_partition; } ;


 int EAGAIN ;
 int OMAP4_PM_PWSTST ;
 int OMAP_INTRANSITION_MASK ;
 scalar_t__ PWRDM_TRANSITION_BAILOUT ;
 int omap4_prminst_read_inst_reg (int ,int ,int ) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int omap4_pwrdm_wait_transition(struct powerdomain *pwrdm)
{
 u32 c = 0;
 while ((omap4_prminst_read_inst_reg(pwrdm->prcm_partition,
         pwrdm->prcm_offs,
         OMAP4_PM_PWSTST) &
  OMAP_INTRANSITION_MASK) &&
        (c++ < PWRDM_TRANSITION_BAILOUT))
  udelay(1);

 if (c > PWRDM_TRANSITION_BAILOUT) {
  pr_err("powerdomain: %s: waited too long to complete transition\n",
         pwrdm->name);
  return -EAGAIN;
 }

 pr_debug("powerdomain: completed transition in %d loops\n", c);

 return 0;
}
