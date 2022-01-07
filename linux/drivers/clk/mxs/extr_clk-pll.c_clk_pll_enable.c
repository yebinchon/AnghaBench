
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ CLR ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int clk_pll_enable(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);

 writel_relaxed(1 << 31, pll->base + CLR);

 return 0;
}
