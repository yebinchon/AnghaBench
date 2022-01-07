
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_omap_divider {int table; } ;
struct clk_hw {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int MULT_ROUND_UP (unsigned long,int) ;
 unsigned long ULONG_MAX ;
 int _div_round (int ,unsigned long,unsigned long) ;
 void* _get_maxdiv (struct clk_omap_divider*) ;
 int _is_valid_div (struct clk_omap_divider*,int) ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,int) ;
 unsigned long min (unsigned long,unsigned long) ;
 struct clk_omap_divider* to_clk_omap_divider (struct clk_hw*) ;

__attribute__((used)) static int ti_clk_divider_bestdiv(struct clk_hw *hw, unsigned long rate,
      unsigned long *best_parent_rate)
{
 struct clk_omap_divider *divider = to_clk_omap_divider(hw);
 int i, bestdiv = 0;
 unsigned long parent_rate, best = 0, now, maxdiv;
 unsigned long parent_rate_saved = *best_parent_rate;

 if (!rate)
  rate = 1;

 maxdiv = _get_maxdiv(divider);

 if (!(clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
  parent_rate = *best_parent_rate;
  bestdiv = _div_round(divider->table, parent_rate, rate);
  bestdiv = bestdiv == 0 ? 1 : bestdiv;
  bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
  return bestdiv;
 }





 maxdiv = min(ULONG_MAX / rate, maxdiv);

 for (i = 1; i <= maxdiv; i++) {
  if (!_is_valid_div(divider, i))
   continue;
  if (rate * i == parent_rate_saved) {





   *best_parent_rate = parent_rate_saved;
   return i;
  }
  parent_rate = clk_hw_round_rate(clk_hw_get_parent(hw),
    MULT_ROUND_UP(rate, i));
  now = DIV_ROUND_UP(parent_rate, i);
  if (now <= rate && now > best) {
   bestdiv = i;
   best = now;
   *best_parent_rate = parent_rate;
  }
 }

 if (!bestdiv) {
  bestdiv = _get_maxdiv(divider);
  *best_parent_rate =
   clk_hw_round_rate(clk_hw_get_parent(hw), 1);
 }

 return bestdiv;
}
