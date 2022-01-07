
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SATA_PLL_CFG0 ;
 int SATA_PLL_CFG0_SATA_SEQ_IN_SWCTL ;
 int SATA_PLL_CFG0_SATA_SEQ_LANE_PD_INPUT_VALUE ;
 int SATA_PLL_CFG0_SATA_SEQ_PADPLL_PD_INPUT_VALUE ;
 int SATA_PLL_CFG0_SATA_SEQ_RESET_INPUT_VALUE ;
 scalar_t__ clk_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void tegra210_set_sata_pll_seq_sw(bool state)
{
 u32 val;

 val = readl_relaxed(clk_base + SATA_PLL_CFG0);
 if (state) {
  val |= SATA_PLL_CFG0_SATA_SEQ_IN_SWCTL;
  val |= SATA_PLL_CFG0_SATA_SEQ_RESET_INPUT_VALUE;
  val |= SATA_PLL_CFG0_SATA_SEQ_LANE_PD_INPUT_VALUE;
  val |= SATA_PLL_CFG0_SATA_SEQ_PADPLL_PD_INPUT_VALUE;
 } else {
  val &= ~SATA_PLL_CFG0_SATA_SEQ_IN_SWCTL;
  val &= ~SATA_PLL_CFG0_SATA_SEQ_RESET_INPUT_VALUE;
  val &= ~SATA_PLL_CFG0_SATA_SEQ_LANE_PD_INPUT_VALUE;
  val &= ~SATA_PLL_CFG0_SATA_SEQ_PADPLL_PD_INPUT_VALUE;
 }
 writel_relaxed(val, clk_base + SATA_PLL_CFG0);
}
