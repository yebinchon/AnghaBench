
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra210_domain_mbist_war {int lvl2_mask; scalar_t__ lvl2_offset; } ;


 scalar_t__ clk_base ;
 int fence_udelay (int,scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tegra210_generic_mbist_war(struct tegra210_domain_mbist_war *mbist)
{
 u32 val;

 val = readl_relaxed(clk_base + mbist->lvl2_offset);
 writel_relaxed(val | mbist->lvl2_mask, clk_base + mbist->lvl2_offset);
 fence_udelay(1, clk_base);
 writel_relaxed(val, clk_base + mbist->lvl2_offset);
 fence_udelay(1, clk_base);
}
