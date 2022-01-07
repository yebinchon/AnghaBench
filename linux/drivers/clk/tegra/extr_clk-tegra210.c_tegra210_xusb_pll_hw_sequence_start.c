
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ XUSBIO_PLL_CFG0 ;
 int XUSBIO_PLL_CFG0_SEQ_ENABLE ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void tegra210_xusb_pll_hw_sequence_start(void)
{
 u32 val;

 val = readl_relaxed(clk_base + XUSBIO_PLL_CFG0);
 val |= XUSBIO_PLL_CFG0_SEQ_ENABLE;
 writel_relaxed(val, clk_base + XUSBIO_PLL_CFG0);
}
