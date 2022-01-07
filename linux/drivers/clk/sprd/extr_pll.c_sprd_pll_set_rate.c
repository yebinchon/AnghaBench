
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int _sprd_pll_set_rate (struct sprd_pll*,unsigned long,unsigned long) ;
 struct sprd_pll* hw_to_sprd_pll (struct clk_hw*) ;

__attribute__((used)) static int sprd_pll_set_rate(struct clk_hw *hw,
        unsigned long rate,
        unsigned long parent_rate)
{
 struct sprd_pll *pll = hw_to_sprd_pll(hw);

 return _sprd_pll_set_rate(pll, rate, parent_rate);
}
