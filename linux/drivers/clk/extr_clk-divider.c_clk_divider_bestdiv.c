
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_hw {int dummy; } ;
struct clk_div_table {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 unsigned long DIV_ROUND_UP_ULL (int ,int) ;
 unsigned long ULONG_MAX ;
 int _div_round (struct clk_div_table const*,unsigned long,unsigned long,unsigned long) ;
 void* _get_maxdiv (struct clk_div_table const*,int ,unsigned long) ;
 scalar_t__ _is_best_div (unsigned long,unsigned long,unsigned long,unsigned long) ;
 int _next_div (struct clk_div_table const*,int,unsigned long) ;
 int clk_hw_get_flags (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (struct clk_hw*,int) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static int clk_divider_bestdiv(struct clk_hw *hw, struct clk_hw *parent,
          unsigned long rate,
          unsigned long *best_parent_rate,
          const struct clk_div_table *table, u8 width,
          unsigned long flags)
{
 int i, bestdiv = 0;
 unsigned long parent_rate, best = 0, now, maxdiv;
 unsigned long parent_rate_saved = *best_parent_rate;

 if (!rate)
  rate = 1;

 maxdiv = _get_maxdiv(table, width, flags);

 if (!(clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
  parent_rate = *best_parent_rate;
  bestdiv = _div_round(table, parent_rate, rate, flags);
  bestdiv = bestdiv == 0 ? 1 : bestdiv;
  bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
  return bestdiv;
 }





 maxdiv = min(ULONG_MAX / rate, maxdiv);

 for (i = _next_div(table, 0, flags); i <= maxdiv;
          i = _next_div(table, i, flags)) {
  if (rate * i == parent_rate_saved) {





   *best_parent_rate = parent_rate_saved;
   return i;
  }
  parent_rate = clk_hw_round_rate(parent, rate * i);
  now = DIV_ROUND_UP_ULL((u64)parent_rate, i);
  if (_is_best_div(rate, now, best, flags)) {
   bestdiv = i;
   best = now;
   *best_parent_rate = parent_rate;
  }
 }

 if (!bestdiv) {
  bestdiv = _get_maxdiv(table, width, flags);
  *best_parent_rate = clk_hw_round_rate(parent, 1);
 }

 return bestdiv;
}
