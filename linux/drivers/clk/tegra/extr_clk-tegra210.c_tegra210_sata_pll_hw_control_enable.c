
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SATA_PLL_CFG0 ;
 int SATA_PLL_CFG0_PADPLL_RESET_SWCTL ;
 int SATA_PLL_CFG0_PADPLL_SLEEP_IDDQ ;
 int SATA_PLL_CFG0_PADPLL_USE_LOCKDET ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void tegra210_sata_pll_hw_control_enable(void)
{
 u32 val;

 val = readl_relaxed(clk_base + SATA_PLL_CFG0);
 val &= ~SATA_PLL_CFG0_PADPLL_RESET_SWCTL;
 val |= SATA_PLL_CFG0_PADPLL_USE_LOCKDET |
        SATA_PLL_CFG0_PADPLL_SLEEP_IDDQ;
 writel_relaxed(val, clk_base + SATA_PLL_CFG0);
}
