
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra210_domain_mbist_war {int dummy; } ;


 int BIT (int) ;
 scalar_t__ LVL2_CLK_GATE_OVRA ;
 scalar_t__ LVL2_CLK_GATE_OVRE ;
 scalar_t__ PLLD_BASE ;
 int PLLD_BASE_CSI_CLKSOURCE ;
 scalar_t__ clk_base ;
 int fence_udelay (int,scalar_t__) ;
 int pll_d_lock ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tegra210_venc_mbist_war(struct tegra210_domain_mbist_war *mbist)
{
 u32 csi_src, ovra, ovre;
 unsigned long flags = 0;

 spin_lock_irqsave(&pll_d_lock, flags);

 csi_src = readl_relaxed(clk_base + PLLD_BASE);
 writel_relaxed(csi_src | PLLD_BASE_CSI_CLKSOURCE, clk_base + PLLD_BASE);
 fence_udelay(1, clk_base);

 ovra = readl_relaxed(clk_base + LVL2_CLK_GATE_OVRA);
 writel_relaxed(ovra | BIT(15), clk_base + LVL2_CLK_GATE_OVRA);
 ovre = readl_relaxed(clk_base + LVL2_CLK_GATE_OVRE);
 writel_relaxed(ovre | BIT(3), clk_base + LVL2_CLK_GATE_OVRE);
 fence_udelay(1, clk_base);

 writel_relaxed(ovra, clk_base + LVL2_CLK_GATE_OVRA);
 writel_relaxed(ovre, clk_base + LVL2_CLK_GATE_OVRE);
 writel_relaxed(csi_src, clk_base + PLLD_BASE);
 fence_udelay(1, clk_base);

 spin_unlock_irqrestore(&pll_d_lock, flags);
}
