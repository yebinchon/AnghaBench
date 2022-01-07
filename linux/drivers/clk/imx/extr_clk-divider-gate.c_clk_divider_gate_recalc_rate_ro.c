
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_divider {unsigned int shift; int width; int flags; int table; int reg; } ;


 unsigned int clk_div_mask (int ) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int ,int ,int ) ;
 unsigned int readl (int ) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_divider_gate_recalc_rate_ro(struct clk_hw *hw,
           unsigned long parent_rate)
{
 struct clk_divider *div = to_clk_divider(hw);
 unsigned int val;

 val = readl(div->reg) >> div->shift;
 val &= clk_div_mask(div->width);
 if (!val)
  return 0;

 return divider_recalc_rate(hw, parent_rate, val, div->table,
       div->flags, div->width);
}
