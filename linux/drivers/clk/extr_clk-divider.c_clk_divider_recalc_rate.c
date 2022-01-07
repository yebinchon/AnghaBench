
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_divider {unsigned int shift; int width; int flags; int table; } ;


 unsigned int clk_div_mask (int ) ;
 unsigned int clk_div_readl (struct clk_divider*) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int ,int ,int ) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_divider_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_divider *divider = to_clk_divider(hw);
 unsigned int val;

 val = clk_div_readl(divider) >> divider->shift;
 val &= clk_div_mask(divider->width);

 return divider_recalc_rate(hw, parent_rate, val, divider->table,
       divider->flags, divider->width);
}
