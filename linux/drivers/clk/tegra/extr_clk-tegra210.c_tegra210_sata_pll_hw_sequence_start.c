
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SATA_PLL_CFG0 ;
 int SATA_PLL_CFG0_SEQ_ENABLE ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void tegra210_sata_pll_hw_sequence_start(void)
{
 u32 val;

 val = readl_relaxed(clk_base + SATA_PLL_CFG0);
 val |= SATA_PLL_CFG0_SEQ_ENABLE;
 writel_relaxed(val, clk_base + SATA_PLL_CFG0);
}
