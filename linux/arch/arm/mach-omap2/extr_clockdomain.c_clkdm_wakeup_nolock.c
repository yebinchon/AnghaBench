
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
struct clockdomain {int flags; TYPE_1__ pwrdm; int _flags; int name; } ;
struct TYPE_4__ {int (* clkdm_wakeup ) (struct clockdomain*) ;} ;


 int CLKDM_CAN_FORCE_WAKEUP ;
 int EINVAL ;
 int _CLKDM_FLAG_HWSUP_ENABLED ;
 TYPE_2__* arch_clkdm ;
 int pr_debug (char*,int ) ;
 int pwrdm_state_switch_nolock (int ) ;
 int stub1 (struct clockdomain*) ;

int clkdm_wakeup_nolock(struct clockdomain *clkdm)
{
 int ret;

 if (!clkdm)
  return -EINVAL;

 if (!(clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)) {
  pr_debug("clockdomain: %s does not support forcing wakeup via software\n",
    clkdm->name);
  return -EINVAL;
 }

 if (!arch_clkdm || !arch_clkdm->clkdm_wakeup)
  return -EINVAL;

 pr_debug("clockdomain: forcing wakeup on %s\n", clkdm->name);

 clkdm->_flags &= ~_CLKDM_FLAG_HWSUP_ENABLED;
 ret = arch_clkdm->clkdm_wakeup(clkdm);
 ret |= pwrdm_state_switch_nolock(clkdm->pwrdm.ptr);

 return ret;
}
