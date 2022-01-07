
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ EXYNOS4_MCT_G_TCON ;
 int MCT_G_TCON_START ;
 int exynos4_mct_write (int ,scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static void exynos4_mct_frc_start(void)
{
 u32 reg;

 reg = readl_relaxed(reg_base + EXYNOS4_MCT_G_TCON);
 reg |= MCT_G_TCON_START;
 exynos4_mct_write(reg, EXYNOS4_MCT_G_TCON);
}
