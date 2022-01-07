
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; int clkdm_offs; int cm_inst; } ;


 int CLKDM_CAN_FORCE_SLEEP ;
 int am33xx_clkdm_sleep (struct clockdomain*) ;
 int am33xx_cm_is_clkdm_in_hwsup (int ,int ) ;

__attribute__((used)) static int am33xx_clkdm_clk_disable(struct clockdomain *clkdm)
{
 bool hwsup = 0;

 hwsup = am33xx_cm_is_clkdm_in_hwsup(clkdm->cm_inst, clkdm->clkdm_offs);

 if (!hwsup && (clkdm->flags & CLKDM_CAN_FORCE_SLEEP))
  am33xx_clkdm_sleep(clkdm);

 return 0;
}
