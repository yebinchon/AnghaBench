
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;


 scalar_t__ EXYNOS4_MCT_G_CNT_L ;
 scalar_t__ EXYNOS4_MCT_G_CNT_U ;
 unsigned int readl_relaxed (scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static u64 exynos4_read_count_64(void)
{
 unsigned int lo, hi;
 u32 hi2 = readl_relaxed(reg_base + EXYNOS4_MCT_G_CNT_U);

 do {
  hi = hi2;
  lo = readl_relaxed(reg_base + EXYNOS4_MCT_G_CNT_L);
  hi2 = readl_relaxed(reg_base + EXYNOS4_MCT_G_CNT_U);
 } while (hi != hi2);

 return ((u64)hi << 32) | lo;
}
