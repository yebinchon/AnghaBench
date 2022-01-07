
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_pll_clk {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ PLLM ;
 struct davinci_pll_clk* to_davinci_pll_clk (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int davinci_pll_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct davinci_pll_clk *pll = to_davinci_pll_clk(hw);
 u32 mult;

 mult = rate / parent_rate;
 writel(mult - 1, pll->base + PLLM);

 return 0;
}
