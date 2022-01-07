
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned int cpg_div6_clock_calc_div (unsigned long,unsigned long) ;

__attribute__((used)) static long cpg_div6_clock_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 unsigned int div = cpg_div6_clock_calc_div(rate, *parent_rate);

 return *parent_rate / div;
}
