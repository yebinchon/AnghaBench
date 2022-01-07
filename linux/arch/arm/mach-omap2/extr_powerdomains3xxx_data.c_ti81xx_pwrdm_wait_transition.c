
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct powerdomain {scalar_t__ prcm_offs; int name; } ;


 int EAGAIN ;
 int OMAP_INTRANSITION_MASK ;
 scalar_t__ PWRDM_TRANSITION_BAILOUT ;
 scalar_t__ TI814X_PRM_GFX_MOD ;
 int TI81XX_PM_PWSTST ;
 int TI81XX_RM_RSTCTRL ;
 int omap2_prm_read_mod_reg (scalar_t__,int ) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ti81xx_pwrdm_wait_transition(struct powerdomain *pwrdm)
{
 u32 c = 0;

 while ((omap2_prm_read_mod_reg(pwrdm->prcm_offs,
  (pwrdm->prcm_offs == TI814X_PRM_GFX_MOD) ? TI81XX_RM_RSTCTRL :
           TI81XX_PM_PWSTST) &
  OMAP_INTRANSITION_MASK) &&
  (c++ < PWRDM_TRANSITION_BAILOUT))
   udelay(1);

 if (c > PWRDM_TRANSITION_BAILOUT) {
  pr_err("powerdomain: %s timeout waiting for transition\n",
         pwrdm->name);
  return -EAGAIN;
 }

 pr_debug("powerdomain: completed transition in %d loops\n", c);

 return 0;
}
