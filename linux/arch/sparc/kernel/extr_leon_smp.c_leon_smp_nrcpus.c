
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mpstatus; } ;


 int LEON3_BYPASS_LOAD_PA (int *) ;
 int LEON3_IRQMPSTATUS_CPUNR ;
 TYPE_1__* leon3_irqctrl_regs ;

int leon_smp_nrcpus(void)
{
 int nrcpu =
     ((LEON3_BYPASS_LOAD_PA(&(leon3_irqctrl_regs->mpstatus)) >>
       LEON3_IRQMPSTATUS_CPUNR) & 0xf) + 1;
 return nrcpu;
}
