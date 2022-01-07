
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
struct clockdomain {int flags; TYPE_1__ pwrdm; int _flags; int name; int usecount; scalar_t__ forcewake_count; } ;
struct TYPE_4__ {int (* clkdm_allow_idle ) (struct clockdomain*) ;} ;


 int CLKDM_CAN_ENABLE_AUTO ;
 int CLKDM_CAN_FORCE_SLEEP ;
 int CLKDM_MISSING_IDLE_REPORTING ;
 int WARN_ON (int) ;
 int _CLKDM_FLAG_HWSUP_ENABLED ;
 TYPE_2__* arch_clkdm ;
 int clkdm_sleep_nolock (struct clockdomain*) ;
 int pr_debug (char*,int ) ;
 int pwrdm_state_switch_nolock (int ) ;
 int stub1 (struct clockdomain*) ;

void clkdm_allow_idle_nolock(struct clockdomain *clkdm)
{
 if (!clkdm)
  return;

 if (!WARN_ON(!clkdm->forcewake_count))
  clkdm->forcewake_count--;

 if (clkdm->forcewake_count)
  return;

 if (!clkdm->usecount && (clkdm->flags & CLKDM_CAN_FORCE_SLEEP))
  clkdm_sleep_nolock(clkdm);

 if (!(clkdm->flags & CLKDM_CAN_ENABLE_AUTO))
  return;

 if (clkdm->flags & CLKDM_MISSING_IDLE_REPORTING)
  return;

 if (!arch_clkdm || !arch_clkdm->clkdm_allow_idle)
  return;

 pr_debug("clockdomain: enabling automatic idle transitions for %s\n",
   clkdm->name);

 clkdm->_flags |= _CLKDM_FLAG_HWSUP_ENABLED;
 arch_clkdm->clkdm_allow_idle(clkdm);
 pwrdm_state_switch_nolock(clkdm->pwrdm.ptr);
}
