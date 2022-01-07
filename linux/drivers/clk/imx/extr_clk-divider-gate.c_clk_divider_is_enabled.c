
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider {int shift; int width; int reg; } ;


 int clk_div_mask (int ) ;
 int readl (int ) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static int clk_divider_is_enabled(struct clk_hw *hw)
{
 struct clk_divider *div = to_clk_divider(hw);
 u32 val;

 val = readl(div->reg) >> div->shift;
 val &= clk_div_mask(div->width);

 return val ? 1 : 0;
}
