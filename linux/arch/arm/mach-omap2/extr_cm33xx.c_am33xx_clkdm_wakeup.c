
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int clkdm_offs; int cm_inst; } ;


 int am33xx_cm_clkdm_force_wakeup (int ,int ) ;

__attribute__((used)) static int am33xx_clkdm_wakeup(struct clockdomain *clkdm)
{
 am33xx_cm_clkdm_force_wakeup(clkdm->cm_inst, clkdm->clkdm_offs);
 return 0;
}
