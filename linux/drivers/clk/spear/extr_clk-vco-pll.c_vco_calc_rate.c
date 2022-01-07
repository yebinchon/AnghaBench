
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_vco {int rtbl; } ;
struct clk_hw {int dummy; } ;


 unsigned long pll_calc_rate (int ,unsigned long,int,int *) ;
 struct clk_vco* to_clk_vco (struct clk_hw*) ;

__attribute__((used)) static inline unsigned long vco_calc_rate(struct clk_hw *hw,
  unsigned long prate, int index)
{
 struct clk_vco *vco = to_clk_vco(hw);

 return pll_calc_rate(vco->rtbl, prate, index, ((void*)0));
}
