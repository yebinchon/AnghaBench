
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_hw {int dummy; } ;
struct clk_divider {unsigned int shift; int width; int reg; } ;


 unsigned long DIV_ROUND_UP_ULL (int,unsigned int) ;
 unsigned int div_mask (int ) ;
 unsigned int readl (int ) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_half_divider_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_divider *divider = to_clk_divider(hw);
 unsigned int val;

 val = readl(divider->reg) >> divider->shift;
 val &= div_mask(divider->width);
 val = val * 2 + 3;

 return DIV_ROUND_UP_ULL(((u64)parent_rate * 2), val);
}
