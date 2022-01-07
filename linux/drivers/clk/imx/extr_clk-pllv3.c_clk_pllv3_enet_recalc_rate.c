
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pllv3 {unsigned long ref_clock; } ;
struct clk_hw {int dummy; } ;


 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pllv3_enet_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);

 return pll->ref_clock;
}
