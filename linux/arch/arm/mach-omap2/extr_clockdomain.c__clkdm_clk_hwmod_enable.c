
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
struct clockdomain {int usecount; int name; TYPE_1__ pwrdm; } ;
struct TYPE_4__ {int (* clkdm_clk_enable ) (struct clockdomain*) ;} ;


 int EINVAL ;
 TYPE_2__* arch_clkdm ;
 scalar_t__ autodeps ;
 int pr_debug (char*,int ) ;
 int pwrdm_lock (int ) ;
 int pwrdm_state_switch_nolock (int ) ;
 int pwrdm_unlock (int ) ;
 int stub1 (struct clockdomain*) ;

__attribute__((used)) static int _clkdm_clk_hwmod_enable(struct clockdomain *clkdm)
{
 if (!clkdm || !arch_clkdm || !arch_clkdm->clkdm_clk_enable)
  return -EINVAL;

 pwrdm_lock(clkdm->pwrdm.ptr);






 clkdm->usecount++;
 if (clkdm->usecount > 1 && autodeps) {
  pwrdm_unlock(clkdm->pwrdm.ptr);
  return 0;
 }

 arch_clkdm->clkdm_clk_enable(clkdm);
 pwrdm_state_switch_nolock(clkdm->pwrdm.ptr);
 pwrdm_unlock(clkdm->pwrdm.ptr);

 pr_debug("clockdomain: %s: enabled\n", clkdm->name);

 return 0;
}
