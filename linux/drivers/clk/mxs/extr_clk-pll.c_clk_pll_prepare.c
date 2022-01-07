
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {int power; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ SET ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int clk_pll_prepare(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);

 writel_relaxed(1 << pll->power, pll->base + SET);

 udelay(10);

 return 0;
}
