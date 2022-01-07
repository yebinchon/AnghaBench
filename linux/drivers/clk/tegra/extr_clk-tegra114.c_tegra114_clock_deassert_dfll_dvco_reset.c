
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DVFS_DFLL_RESET_SHIFT ;
 scalar_t__ RST_DFLL_DVCO ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int tegra114_car_barrier () ;
 int writel_relaxed (int,scalar_t__) ;

void tegra114_clock_deassert_dfll_dvco_reset(void)
{
 u32 v;

 v = readl_relaxed(clk_base + RST_DFLL_DVCO);
 v &= ~(1 << DVFS_DFLL_RESET_SHIFT);
 writel_relaxed(v, clk_base + RST_DFLL_DVCO);
 tegra114_car_barrier();
}
