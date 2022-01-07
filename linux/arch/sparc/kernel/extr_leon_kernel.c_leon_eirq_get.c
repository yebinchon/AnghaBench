
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * intid; } ;


 int LEON3_BYPASS_LOAD_PA (int *) ;
 TYPE_1__* leon3_irqctrl_regs ;

__attribute__((used)) static inline unsigned int leon_eirq_get(int cpu)
{
 return LEON3_BYPASS_LOAD_PA(&leon3_irqctrl_regs->intid[cpu]) & 0x1f;
}
