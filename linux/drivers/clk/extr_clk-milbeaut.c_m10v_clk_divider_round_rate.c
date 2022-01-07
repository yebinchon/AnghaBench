
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m10v_clk_divider {int flags; int shift; int width; int table; int reg; } ;
struct clk_hw {int dummy; } ;


 int CLK_DIVIDER_READ_ONLY ;
 int clk_div_mask (int ) ;
 long divider_ro_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int,int) ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int) ;
 int readl (int ) ;
 struct m10v_clk_divider* to_m10v_div (struct clk_hw*) ;

__attribute__((used)) static long m10v_clk_divider_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct m10v_clk_divider *divider = to_m10v_div(hw);


 if (divider->flags & CLK_DIVIDER_READ_ONLY) {
  u32 val;

  val = readl(divider->reg) >> divider->shift;
  val &= clk_div_mask(divider->width);

  return divider_ro_round_rate(hw, rate, prate, divider->table,
          divider->width, divider->flags,
          val);
 }

 return divider_round_rate(hw, rate, prate, divider->table,
      divider->width, divider->flags);
}
