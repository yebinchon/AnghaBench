
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int clkdm_offs; int cm_inst; int context; } ;


 int AM33XX_CLKTRCTRL_MASK ;
 int am33xx_cm_read_reg_bits (int ,int ,int ) ;

__attribute__((used)) static int am33xx_clkdm_save_context(struct clockdomain *clkdm)
{
 clkdm->context = am33xx_cm_read_reg_bits(clkdm->cm_inst,
       clkdm->clkdm_offs,
       AM33XX_CLKTRCTRL_MASK);

 return 0;
}
