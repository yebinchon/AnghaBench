
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pll {int udelay; } ;
struct clk_hw {int dummy; } ;


 struct sprd_pll* hw_to_sprd_pll (struct clk_hw*) ;
 int udelay (int ) ;

__attribute__((used)) static int sprd_pll_clk_prepare(struct clk_hw *hw)
{
 struct sprd_pll *pll = hw_to_sprd_pll(hw);

 udelay(pll->udelay);

 return 0;
}
