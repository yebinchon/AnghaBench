
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_divider {unsigned int shift; int flags; int reg; int width; } ;


 unsigned int PCG_DIV_SHIFT ;
 int PCG_DIV_WIDTH ;
 unsigned int clk_div_mask (int ) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int *,int ,int ) ;
 unsigned int readl (int ) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_divider *divider = to_clk_divider(hw);
 unsigned long prediv_rate;
 unsigned int prediv_value;
 unsigned int div_value;

 prediv_value = readl(divider->reg) >> divider->shift;
 prediv_value &= clk_div_mask(divider->width);

 prediv_rate = divider_recalc_rate(hw, parent_rate, prediv_value,
      ((void*)0), divider->flags,
      divider->width);

 div_value = readl(divider->reg) >> PCG_DIV_SHIFT;
 div_value &= clk_div_mask(PCG_DIV_WIDTH);

 return divider_recalc_rate(hw, prediv_rate, div_value, ((void*)0),
       divider->flags, PCG_DIV_WIDTH);
}
