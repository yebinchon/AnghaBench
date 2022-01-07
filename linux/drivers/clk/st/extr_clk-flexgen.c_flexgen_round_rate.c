
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 unsigned long clk_best_div (unsigned long,unsigned long) ;
 int clk_hw_get_flags (struct clk_hw*) ;

__attribute__((used)) static long flexgen_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *prate)
{
 unsigned long div;


 div = clk_best_div(*prate, rate);

 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
  *prate = rate * div;
  return rate;
 }

 return *prate / div;
}
