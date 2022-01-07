
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hi6220_clk_divider {int width; int table; } ;
struct clk_hw {int dummy; } ;


 int CLK_DIVIDER_ROUND_CLOSEST ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int ) ;
 struct hi6220_clk_divider* to_hi6220_clk_divider (struct clk_hw*) ;

__attribute__((used)) static long hi6220_clkdiv_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 struct hi6220_clk_divider *dclk = to_hi6220_clk_divider(hw);

 return divider_round_rate(hw, rate, prate, dclk->table,
      dclk->width, CLK_DIVIDER_ROUND_CLOSEST);
}
