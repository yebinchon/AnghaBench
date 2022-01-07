
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GIC_DIST_ENABLE_SET ;
 scalar_t__ GIC_DIST_PENDING_SET ;
 int PRCMU_GIC_NUMBER_REGS ;
 scalar_t__ dist_base ;
 int readl_relaxed (scalar_t__) ;

bool prcmu_gic_pending_irq(void)
{
 u32 pr;
 u32 er;
 int i;


 for (i = 0; i < PRCMU_GIC_NUMBER_REGS; i++) {

  pr = readl_relaxed(dist_base + GIC_DIST_PENDING_SET + i * 4);
  er = readl_relaxed(dist_base + GIC_DIST_ENABLE_SET + i * 4);

  if (pr & er)
   return 1;
 }

 return 0;
}
