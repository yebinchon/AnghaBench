
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_hw {int dummy; } ;
struct clk_div_table {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 long DIV_ROUND_UP_ULL (int ,int) ;
 long EINVAL ;
 int _get_div (struct clk_div_table const*,unsigned int,unsigned long,int ) ;
 int clk_hw_get_flags (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (struct clk_hw*,unsigned long) ;

long divider_ro_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
      unsigned long rate, unsigned long *prate,
      const struct clk_div_table *table, u8 width,
      unsigned long flags, unsigned int val)
{
 int div;

 div = _get_div(table, val, flags, width);


 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
  if (!parent)
   return -EINVAL;

  *prate = clk_hw_round_rate(parent, rate * div);
 }

 return DIV_ROUND_UP_ULL((u64)*prate, div);
}
