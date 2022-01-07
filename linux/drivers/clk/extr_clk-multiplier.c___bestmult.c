
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_multiplier {int flags; } ;
struct clk_hw {int dummy; } ;


 int CLK_MULTIPLIER_ZERO_BYPASS ;
 int CLK_SET_RATE_PARENT ;
 scalar_t__ __is_best_rate (unsigned long,unsigned long,unsigned long,unsigned long) ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;
 struct clk_multiplier* to_clk_multiplier (struct clk_hw*) ;

__attribute__((used)) static unsigned long __bestmult(struct clk_hw *hw, unsigned long rate,
    unsigned long *best_parent_rate,
    u8 width, unsigned long flags)
{
 struct clk_multiplier *mult = to_clk_multiplier(hw);
 unsigned long orig_parent_rate = *best_parent_rate;
 unsigned long parent_rate, current_rate, best_rate = ~0;
 unsigned int i, bestmult = 0;
 unsigned int maxmult = (1 << width) - 1;

 if (!(clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT)) {
  bestmult = rate / orig_parent_rate;


  if ((bestmult == 0) &&
      !(mult->flags & CLK_MULTIPLIER_ZERO_BYPASS))
   bestmult = 1;


  if (bestmult > maxmult)
   bestmult = maxmult;

  return bestmult;
 }

 for (i = 1; i < maxmult; i++) {
  if (rate == orig_parent_rate * i) {





   *best_parent_rate = orig_parent_rate;
   return i;
  }

  parent_rate = clk_hw_round_rate(clk_hw_get_parent(hw),
      rate / i);
  current_rate = parent_rate * i;

  if (__is_best_rate(rate, current_rate, best_rate, flags)) {
   bestmult = i;
   best_rate = current_rate;
   *best_parent_rate = parent_rate;
  }
 }

 return bestmult;
}
