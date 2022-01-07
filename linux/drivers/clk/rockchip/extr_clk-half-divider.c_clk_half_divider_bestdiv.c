
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_hw {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 void* DIV_ROUND_UP_ULL (int,unsigned int) ;
 unsigned long ULONG_MAX ;
 scalar_t__ _is_best_half_div (unsigned long,unsigned long,unsigned long,unsigned long) ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,int) ;
 void* div_mask (int ) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static int clk_half_divider_bestdiv(struct clk_hw *hw, unsigned long rate,
        unsigned long *best_parent_rate, u8 width,
        unsigned long flags)
{
 unsigned int i, bestdiv = 0;
 unsigned long parent_rate, best = 0, now, maxdiv;
 unsigned long parent_rate_saved = *best_parent_rate;

 if (!rate)
  rate = 1;

 maxdiv = div_mask(width);

 if (!(clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
  parent_rate = *best_parent_rate;
  bestdiv = DIV_ROUND_UP_ULL(((u64)parent_rate * 2), rate);
  if (bestdiv < 3)
   bestdiv = 0;
  else
   bestdiv = (bestdiv - 3) / 2;
  bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
  return bestdiv;
 }





 maxdiv = min(ULONG_MAX / rate, maxdiv);

 for (i = 0; i <= maxdiv; i++) {
  if (((u64)rate * (i * 2 + 3)) == ((u64)parent_rate_saved * 2)) {





   *best_parent_rate = parent_rate_saved;
   return i;
  }
  parent_rate = clk_hw_round_rate(clk_hw_get_parent(hw),
      ((u64)rate * (i * 2 + 3)) / 2);
  now = DIV_ROUND_UP_ULL(((u64)parent_rate * 2),
           (i * 2 + 3));

  if (_is_best_half_div(rate, now, best, flags)) {
   bestdiv = i;
   best = now;
   *best_parent_rate = parent_rate;
  }
 }

 if (!bestdiv) {
  bestdiv = div_mask(width);
  *best_parent_rate = clk_hw_round_rate(clk_hw_get_parent(hw), 1);
 }

 return bestdiv;
}
