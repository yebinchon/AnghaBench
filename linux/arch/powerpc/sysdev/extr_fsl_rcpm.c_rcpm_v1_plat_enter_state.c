
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int powmgtcsr; } ;


 int EINVAL ;
 int ETIMEDOUT ;

 int RCPM_POWMGTCSR_SLP ;
 int in_be32 (int *) ;
 int pr_err (char*) ;
 int pr_warn (char*,int) ;
 TYPE_1__* rcpm_v1_regs ;
 int setbits32 (int *,int) ;
 int spin_event_timeout (int,int,int) ;

__attribute__((used)) static int rcpm_v1_plat_enter_state(int state)
{
 u32 *pmcsr_reg = &rcpm_v1_regs->powmgtcsr;
 int ret = 0;
 int result;

 switch (state) {
 case 128:
  setbits32(pmcsr_reg, RCPM_POWMGTCSR_SLP);


  result = spin_event_timeout(
    !(in_be32(pmcsr_reg) & RCPM_POWMGTCSR_SLP), 10000, 10);
  if (!result) {
   pr_err("timeout waiting for SLP bit to be cleared\n");
   ret = -ETIMEDOUT;
  }
  break;
 default:
  pr_warn("Unknown platform PM state (%d)", state);
  ret = -EINVAL;
 }

 return ret;
}
