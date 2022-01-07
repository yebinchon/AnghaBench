
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int clkdm_offs; int cm_inst; } ;


 int am33xx_cm_clkdm_disable_hwsup (int ,int ) ;

__attribute__((used)) static void am33xx_clkdm_deny_idle(struct clockdomain *clkdm)
{
 am33xx_cm_clkdm_disable_hwsup(clkdm->cm_inst, clkdm->clkdm_offs);
}
