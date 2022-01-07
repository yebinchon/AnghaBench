
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hwmod {int dummy; } ;
struct TYPE_3__ {int ptr; } ;
struct clockdomain {scalar_t__ usecount; int name; TYPE_1__ pwrdm; } ;
struct TYPE_4__ {int (* clkdm_clk_disable ) (struct clockdomain*) ;} ;


 int EINVAL ;
 int ERANGE ;
 int WARN_ON (int) ;
 TYPE_2__* arch_clkdm ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int pr_debug (char*,int ) ;
 int pwrdm_lock (int ) ;
 int pwrdm_state_switch_nolock (int ) ;
 int pwrdm_unlock (int ) ;
 int stub1 (struct clockdomain*) ;

int clkdm_hwmod_disable(struct clockdomain *clkdm, struct omap_hwmod *oh)
{

 if (cpu_is_omap24xx() || cpu_is_omap34xx())
  return 0;






 if (!clkdm || !oh || !arch_clkdm || !arch_clkdm->clkdm_clk_disable)
  return -EINVAL;

 pwrdm_lock(clkdm->pwrdm.ptr);

 if (clkdm->usecount == 0) {
  pwrdm_unlock(clkdm->pwrdm.ptr);
  WARN_ON(1);
  return -ERANGE;
 }

 clkdm->usecount--;
 if (clkdm->usecount > 0) {
  pwrdm_unlock(clkdm->pwrdm.ptr);
  return 0;
 }

 arch_clkdm->clkdm_clk_disable(clkdm);
 pwrdm_state_switch_nolock(clkdm->pwrdm.ptr);
 pwrdm_unlock(clkdm->pwrdm.ptr);

 pr_debug("clockdomain: %s: disabled\n", clkdm->name);

 return 0;
}
