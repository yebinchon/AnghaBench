
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m10v_clk_divider {unsigned int shift; int width; int flags; int table; int reg; } ;
struct clk_hw {int dummy; } ;


 unsigned int clk_div_mask (int ) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int ,int ,int ) ;
 unsigned int readl (int ) ;
 struct m10v_clk_divider* to_m10v_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long m10v_clk_divider_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct m10v_clk_divider *divider = to_m10v_div(hw);
 unsigned int val;

 val = readl(divider->reg) >> divider->shift;
 val &= clk_div_mask(divider->width);

 return divider_recalc_rate(hw, parent_rate, val, divider->table,
       divider->flags, divider->width);
}
