
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GIC_DIST_ENABLE_SET ;
 int PRCMU_GIC_NUMBER_REGS ;
 scalar_t__ PRCM_ARMITMSK31TO0 ;
 scalar_t__ dist_base ;
 int readl_relaxed (scalar_t__) ;
 int writel (int ,scalar_t__) ;

int prcmu_copy_gic_settings(void)
{
 u32 er;
 int i;


 for (i = 0; i < PRCMU_GIC_NUMBER_REGS - 1; i++) {
  er = readl_relaxed(dist_base +
       GIC_DIST_ENABLE_SET + (i + 1) * 4);
  writel(er, PRCM_ARMITMSK31TO0 + i * 4);
 }

 return 0;
}
