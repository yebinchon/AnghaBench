
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dep_bit; scalar_t__ clkdm_offs; int cm_inst; int prcm_partition; } ;


 scalar_t__ OMAP4_CM_STATICDEP ;
 int omap4_cminst_set_inst_reg_bits (int,int ,int ,scalar_t__) ;

__attribute__((used)) static int omap4_clkdm_add_wkup_sleep_dep(struct clockdomain *clkdm1,
     struct clockdomain *clkdm2)
{
 omap4_cminst_set_inst_reg_bits((1 << clkdm2->dep_bit),
           clkdm1->prcm_partition,
           clkdm1->cm_inst, clkdm1->clkdm_offs +
           OMAP4_CM_STATICDEP);
 return 0;
}
