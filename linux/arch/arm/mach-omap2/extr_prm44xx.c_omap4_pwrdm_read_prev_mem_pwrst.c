
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct powerdomain {int dummy; } ;


 int PWRDM_POWER_OFF ;
 int PWRDM_POWER_RET ;
 int omap4_pwrdm_read_mem_retst (struct powerdomain*,int ) ;
 int omap4_pwrdm_read_prev_pwrst (struct powerdomain*) ;

__attribute__((used)) static int omap4_pwrdm_read_prev_mem_pwrst(struct powerdomain *pwrdm, u8 bank)
{
 int state;

 state = omap4_pwrdm_read_prev_pwrst(pwrdm);

 if (state == PWRDM_POWER_OFF)
  return PWRDM_POWER_OFF;

 if (state != PWRDM_POWER_RET)
  return PWRDM_POWER_RET;

 return omap4_pwrdm_read_mem_retst(pwrdm, bank);
}
