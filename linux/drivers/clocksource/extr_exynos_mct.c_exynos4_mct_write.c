
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




 unsigned long EXYNOS4_MCT_G_CNT_WSTAT ;




 unsigned long EXYNOS4_MCT_G_WSTAT ;
 unsigned long EXYNOS4_MCT_L_BASE (int ) ;
 unsigned long EXYNOS4_MCT_L_MASK ;
 int HZ ;



 unsigned long MCT_L_WSTAT_OFFSET ;
 scalar_t__ likely (int) ;
 int loops_per_jiffy ;
 int panic (char*,unsigned int,unsigned long) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ reg_base ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void exynos4_mct_write(unsigned int value, unsigned long offset)
{
 unsigned long stat_addr;
 u32 mask;
 u32 i;

 writel_relaxed(value, reg_base + offset);

 if (likely(offset >= EXYNOS4_MCT_L_BASE(0))) {
  stat_addr = (offset & EXYNOS4_MCT_L_MASK) + MCT_L_WSTAT_OFFSET;
  switch (offset & ~EXYNOS4_MCT_L_MASK) {
  case 128:
   mask = 1 << 3;
   break;
  case 130:
   mask = 1 << 1;
   break;
  case 129:
   mask = 1 << 0;
   break;
  default:
   return;
  }
 } else {
  switch (offset) {
  case 131:
   stat_addr = EXYNOS4_MCT_G_WSTAT;
   mask = 1 << 16;
   break;
  case 133:
   stat_addr = EXYNOS4_MCT_G_WSTAT;
   mask = 1 << 0;
   break;
  case 132:
   stat_addr = EXYNOS4_MCT_G_WSTAT;
   mask = 1 << 1;
   break;
  case 134:
   stat_addr = EXYNOS4_MCT_G_WSTAT;
   mask = 1 << 2;
   break;
  case 136:
   stat_addr = EXYNOS4_MCT_G_CNT_WSTAT;
   mask = 1 << 0;
   break;
  case 135:
   stat_addr = EXYNOS4_MCT_G_CNT_WSTAT;
   mask = 1 << 1;
   break;
  default:
   return;
  }
 }


 for (i = 0; i < loops_per_jiffy / 1000 * HZ; i++)
  if (readl_relaxed(reg_base + stat_addr) & mask) {
   writel_relaxed(mask, reg_base + stat_addr);
   return;
  }

 panic("MCT hangs after writing %d (offset:0x%lx)\n", value, offset);
}
