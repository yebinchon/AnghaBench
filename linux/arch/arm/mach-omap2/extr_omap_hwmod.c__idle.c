
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hwmod {int flags; scalar_t__ _state; scalar_t__ clkdm; TYPE_1__* class; int name; int _int_flags; } ;
struct TYPE_4__ {int (* disable_module ) (struct omap_hwmod*) ;} ;
struct TYPE_3__ {scalar_t__ sysc; } ;


 int EINVAL ;
 int HWMOD_BLOCK_WFI ;
 int HWMOD_CLKDM_NOAUTO ;
 int HWMOD_NO_IDLE ;
 int WARN (int,char*,int ) ;
 int _HWMOD_SKIP_ENABLE ;
 scalar_t__ _HWMOD_STATE_ENABLED ;
 scalar_t__ _HWMOD_STATE_IDLE ;
 scalar_t__ _are_all_hardreset_lines_asserted (struct omap_hwmod*) ;
 int _del_initiator_dep (struct omap_hwmod*,int ) ;
 int _disable_clocks (struct omap_hwmod*) ;
 int _idle_sysc (struct omap_hwmod*) ;
 int clkdm_allow_idle (scalar_t__) ;
 int clkdm_deny_idle (scalar_t__) ;
 int clkdm_hwmod_disable (scalar_t__,struct omap_hwmod*) ;
 int cpu_idle_poll_ctrl (int) ;
 int mpu_oh ;
 int pr_debug (char*,int ) ;
 TYPE_2__ soc_ops ;
 int stub1 (struct omap_hwmod*) ;

__attribute__((used)) static int _idle(struct omap_hwmod *oh)
{
 if (oh->flags & HWMOD_NO_IDLE) {
  oh->_int_flags |= _HWMOD_SKIP_ENABLE;
  return 0;
 }

 pr_debug("omap_hwmod: %s: idling\n", oh->name);

 if (_are_all_hardreset_lines_asserted(oh))
  return 0;

 if (oh->_state != _HWMOD_STATE_ENABLED) {
  WARN(1, "omap_hwmod: %s: idle state can only be entered from enabled state\n",
   oh->name);
  return -EINVAL;
 }

 if (oh->class->sysc)
  _idle_sysc(oh);
 _del_initiator_dep(oh, mpu_oh);






 if (oh->clkdm && !(oh->flags & HWMOD_CLKDM_NOAUTO))
  clkdm_deny_idle(oh->clkdm);

 if (oh->flags & HWMOD_BLOCK_WFI)
  cpu_idle_poll_ctrl(0);
 if (soc_ops.disable_module)
  soc_ops.disable_module(oh);







 _disable_clocks(oh);
 if (oh->clkdm) {
  clkdm_allow_idle(oh->clkdm);
  clkdm_hwmod_disable(oh->clkdm, oh);
 }

 oh->_state = _HWMOD_STATE_IDLE;

 return 0;
}
