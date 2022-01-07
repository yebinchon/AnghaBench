
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct powerdomain {int flags; int * pwrdm_clkdms; } ;
struct TYPE_2__ {scalar_t__ pwrdm_set_lowpwrstchange; } ;


 scalar_t__ ALREADYACTIVE_SWITCH ;
 scalar_t__ FORCEWAKEUP_SWITCH ;
 scalar_t__ LOWPOWERSTATE_SWITCH ;
 int PWRDM_HAS_LOWPOWERSTATECHANGE ;
 scalar_t__ PWRDM_POWER_ON ;
 TYPE_1__* arch_pwrdm ;
 int clkdm_deny_idle_nolock (int ) ;

__attribute__((used)) static u8 _pwrdm_save_clkdm_state_and_activate(struct powerdomain *pwrdm,
            u8 curr_pwrst, u8 pwrst)
{
 u8 sleep_switch;

 if (curr_pwrst < PWRDM_POWER_ON) {
  if (curr_pwrst > pwrst &&
      pwrdm->flags & PWRDM_HAS_LOWPOWERSTATECHANGE &&
      arch_pwrdm->pwrdm_set_lowpwrstchange) {
   sleep_switch = LOWPOWERSTATE_SWITCH;
  } else {
   clkdm_deny_idle_nolock(pwrdm->pwrdm_clkdms[0]);
   sleep_switch = FORCEWAKEUP_SWITCH;
  }
 } else {
  sleep_switch = ALREADYACTIVE_SWITCH;
 }

 return sleep_switch;
}
