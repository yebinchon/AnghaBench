
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPR_PMR ;
 int SPR_PMR_DME ;
 int SPR_UPR ;
 int SPR_UPR_PMP ;
 int local_irq_enable () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

void arch_cpu_idle(void)
{
 local_irq_enable();
 if (mfspr(SPR_UPR) & SPR_UPR_PMP)
  mtspr(SPR_PMR, mfspr(SPR_PMR) | SPR_PMR_DME);
}
