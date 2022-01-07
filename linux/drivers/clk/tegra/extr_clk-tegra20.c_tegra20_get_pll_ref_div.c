
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 scalar_t__ OSC_CTRL ;



 int OSC_CTRL_PLL_REF_DIV_MASK ;
 scalar_t__ clk_base ;
 int pr_err (char*,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned int tegra20_get_pll_ref_div(void)
{
 u32 pll_ref_div = readl_relaxed(clk_base + OSC_CTRL) &
  OSC_CTRL_PLL_REF_DIV_MASK;

 switch (pll_ref_div) {
 case 130:
  return 1;
 case 129:
  return 2;
 case 128:
  return 4;
 default:
  pr_err("Invalid pll ref divider %d\n", pll_ref_div);
  BUG();
 }
 return 0;
}
