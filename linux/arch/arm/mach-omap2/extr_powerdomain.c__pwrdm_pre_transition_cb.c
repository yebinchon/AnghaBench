
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;


 int PWRDM_STATE_NOW ;
 int _pwrdm_state_switch (struct powerdomain*,int ) ;
 int pwrdm_clear_all_prev_pwrst (struct powerdomain*) ;

__attribute__((used)) static int _pwrdm_pre_transition_cb(struct powerdomain *pwrdm, void *unused)
{
 pwrdm_clear_all_prev_pwrst(pwrdm);
 _pwrdm_state_switch(pwrdm, PWRDM_STATE_NOW);
 return 0;
}
