
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra210_domain_mbist_war {int dummy; } ;


 int BIT (int) ;
 scalar_t__ DC_CMD_DISPLAY_COMMAND ;
 scalar_t__ DC_COM_DSC_TOP_CTL ;
 scalar_t__ LVL2_CLK_GATE_OVRA ;
 scalar_t__ clk_base ;
 scalar_t__ dispa_base ;
 int fence_udelay (int,scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tegra210_disp_mbist_war(struct tegra210_domain_mbist_war *mbist)
{
 u32 ovra, dsc_top_ctrl;

 ovra = readl_relaxed(clk_base + LVL2_CLK_GATE_OVRA);
 writel_relaxed(ovra | BIT(1), clk_base + LVL2_CLK_GATE_OVRA);
 fence_udelay(1, clk_base);

 dsc_top_ctrl = readl_relaxed(dispa_base + DC_COM_DSC_TOP_CTL);
 writel_relaxed(dsc_top_ctrl | BIT(2), dispa_base + DC_COM_DSC_TOP_CTL);
 readl_relaxed(dispa_base + DC_CMD_DISPLAY_COMMAND);
 writel_relaxed(dsc_top_ctrl, dispa_base + DC_COM_DSC_TOP_CTL);
 readl_relaxed(dispa_base + DC_CMD_DISPLAY_COMMAND);

 writel_relaxed(ovra, clk_base + LVL2_CLK_GATE_OVRA);
 fence_udelay(1, clk_base);
}
