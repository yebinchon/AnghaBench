
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct powerdomain {scalar_t__ pwrsts_logic_ret; int banks; scalar_t__* pwrsts_mem_ret; int * ret_mem_off_counter; int ret_logic_off_counter; } ;


 scalar_t__ PWRDM_POWER_OFF ;
 scalar_t__ PWRSTS_OFF_RET ;
 scalar_t__ pwrdm_read_prev_logic_pwrst (struct powerdomain*) ;
 scalar_t__ pwrdm_read_prev_mem_pwrst (struct powerdomain*,int) ;

__attribute__((used)) static void _update_logic_membank_counters(struct powerdomain *pwrdm)
{
 int i;
 u8 prev_logic_pwrst, prev_mem_pwrst;

 prev_logic_pwrst = pwrdm_read_prev_logic_pwrst(pwrdm);
 if ((pwrdm->pwrsts_logic_ret == PWRSTS_OFF_RET) &&
     (prev_logic_pwrst == PWRDM_POWER_OFF))
  pwrdm->ret_logic_off_counter++;

 for (i = 0; i < pwrdm->banks; i++) {
  prev_mem_pwrst = pwrdm_read_prev_mem_pwrst(pwrdm, i);

  if ((pwrdm->pwrsts_mem_ret[i] == PWRSTS_OFF_RET) &&
      (prev_mem_pwrst == PWRDM_POWER_OFF))
   pwrdm->ret_mem_off_counter[i]++;
 }
}
