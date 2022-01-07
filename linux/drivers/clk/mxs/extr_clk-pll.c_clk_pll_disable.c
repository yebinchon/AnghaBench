
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ SET ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void clk_pll_disable(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);

 writel_relaxed(1 << 31, pll->base + SET);
}
