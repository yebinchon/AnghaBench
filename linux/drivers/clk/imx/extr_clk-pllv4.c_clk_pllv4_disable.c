
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv4 {int base; } ;
struct clk_hw {int dummy; } ;


 int PLL_EN ;
 int readl_relaxed (int ) ;
 struct clk_pllv4* to_clk_pllv4 (struct clk_hw*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void clk_pllv4_disable(struct clk_hw *hw)
{
 u32 val;
 struct clk_pllv4 *pll = to_clk_pllv4(hw);

 val = readl_relaxed(pll->base);
 val &= ~PLL_EN;
 writel_relaxed(val, pll->base);
}
