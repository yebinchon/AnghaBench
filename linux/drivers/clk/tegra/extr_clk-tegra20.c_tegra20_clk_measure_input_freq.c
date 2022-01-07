
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ OSC_CTRL ;




 int OSC_CTRL_OSC_FREQ_MASK ;
 int OSC_CTRL_PLL_REF_DIV_1 ;
 int OSC_CTRL_PLL_REF_DIV_MASK ;
 scalar_t__ clk_base ;
 int pr_err (char*,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned long tegra20_clk_measure_input_freq(void)
{
 u32 osc_ctrl = readl_relaxed(clk_base + OSC_CTRL);
 u32 auto_clk_control = osc_ctrl & OSC_CTRL_OSC_FREQ_MASK;
 u32 pll_ref_div = osc_ctrl & OSC_CTRL_PLL_REF_DIV_MASK;
 unsigned long input_freq;

 switch (auto_clk_control) {
 case 131:
  BUG_ON(pll_ref_div != OSC_CTRL_PLL_REF_DIV_1);
  input_freq = 12000000;
  break;
 case 130:
  BUG_ON(pll_ref_div != OSC_CTRL_PLL_REF_DIV_1);
  input_freq = 13000000;
  break;
 case 129:
  BUG_ON(pll_ref_div != OSC_CTRL_PLL_REF_DIV_1);
  input_freq = 19200000;
  break;
 case 128:
  BUG_ON(pll_ref_div != OSC_CTRL_PLL_REF_DIV_1);
  input_freq = 26000000;
  break;
 default:
  pr_err("Unexpected clock autodetect value %d",
         auto_clk_control);
  BUG();
  return 0;
 }

 return input_freq;
}
