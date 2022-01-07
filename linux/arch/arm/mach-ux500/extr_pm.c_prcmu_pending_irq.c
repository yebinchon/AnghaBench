
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PRCMU_GIC_NUMBER_REGS ;
 scalar_t__ PRCM_ARMITMSK31TO0 ;
 scalar_t__ PRCM_ARMITVAL31TO0 ;
 int readl (scalar_t__) ;

bool prcmu_pending_irq(void)
{
 u32 it, im;
 int i;

 for (i = 0; i < PRCMU_GIC_NUMBER_REGS - 1; i++) {
  it = readl(PRCM_ARMITVAL31TO0 + i * 4);
  im = readl(PRCM_ARMITMSK31TO0 + i * 4);
  if (it & im)
   return 1;
 }

 return 0;
}
