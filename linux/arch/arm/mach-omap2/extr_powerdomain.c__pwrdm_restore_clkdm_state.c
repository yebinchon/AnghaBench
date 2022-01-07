
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct powerdomain {int flags; int * pwrdm_clkdms; } ;
struct TYPE_2__ {int (* pwrdm_set_lowpwrstchange ) (struct powerdomain*) ;} ;




 int PWRDM_HAS_LOWPOWERSTATECHANGE ;
 TYPE_1__* arch_pwrdm ;
 int clkdm_allow_idle_nolock (int ) ;
 int pwrdm_state_switch_nolock (struct powerdomain*) ;
 int stub1 (struct powerdomain*) ;

__attribute__((used)) static void _pwrdm_restore_clkdm_state(struct powerdomain *pwrdm,
           u8 sleep_switch)
{
 switch (sleep_switch) {
 case 129:
  clkdm_allow_idle_nolock(pwrdm->pwrdm_clkdms[0]);
  break;
 case 128:
  if (pwrdm->flags & PWRDM_HAS_LOWPOWERSTATECHANGE &&
      arch_pwrdm->pwrdm_set_lowpwrstchange)
   arch_pwrdm->pwrdm_set_lowpwrstchange(pwrdm);
  pwrdm_state_switch_nolock(pwrdm);
  break;
 }
}
