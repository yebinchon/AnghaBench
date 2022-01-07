
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int state; int * state_counter; int name; } ;


 int EINVAL ;
 int OMAP_POWERSTATE_MASK ;
 int PWRDM_POWER_RET ;


 int PWRDM_TRACE_STATES_FLAG ;
 int _update_logic_membank_counters (struct powerdomain*) ;
 int pm_dbg_update_time (struct powerdomain*,int) ;
 int pwrdm_read_next_pwrst (struct powerdomain*) ;
 int pwrdm_read_prev_pwrst (struct powerdomain*) ;
 int pwrdm_read_pwrst (struct powerdomain*) ;
 int raw_smp_processor_id () ;
 int trace_power_domain_target_rcuidle (int ,int,int ) ;

__attribute__((used)) static int _pwrdm_state_switch(struct powerdomain *pwrdm, int flag)
{

 int prev, next, state, trace_state = 0;

 if (pwrdm == ((void*)0))
  return -EINVAL;

 state = pwrdm_read_pwrst(pwrdm);

 switch (flag) {
 case 129:
  prev = pwrdm->state;
  break;
 case 128:
  prev = pwrdm_read_prev_pwrst(pwrdm);
  if (pwrdm->state != prev)
   pwrdm->state_counter[prev]++;
  if (prev == PWRDM_POWER_RET)
   _update_logic_membank_counters(pwrdm);




  next = pwrdm_read_next_pwrst(pwrdm);
  if (next != prev) {
   trace_state = (PWRDM_TRACE_STATES_FLAG |
           ((next & OMAP_POWERSTATE_MASK) << 8) |
           ((prev & OMAP_POWERSTATE_MASK) << 0));
   trace_power_domain_target_rcuidle(pwrdm->name,
         trace_state,
         raw_smp_processor_id());
  }
  break;
 default:
  return -EINVAL;
 }

 if (state != prev)
  pwrdm->state_counter[state]++;

 pm_dbg_update_time(pwrdm, prev);

 pwrdm->state = state;

 return 0;
}
