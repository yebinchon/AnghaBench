
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_hw {int dummy; } ;
struct clk_div_table {int dummy; } ;


 long DIV_ROUND_UP_ULL (int ,int) ;
 int clk_divider_bestdiv (struct clk_hw*,struct clk_hw*,unsigned long,unsigned long*,struct clk_div_table const*,int ,unsigned long) ;

long divider_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
          unsigned long rate, unsigned long *prate,
          const struct clk_div_table *table,
          u8 width, unsigned long flags)
{
 int div;

 div = clk_divider_bestdiv(hw, parent, rate, prate, table, width, flags);

 return DIV_ROUND_UP_ULL((u64)*prate, div);
}
