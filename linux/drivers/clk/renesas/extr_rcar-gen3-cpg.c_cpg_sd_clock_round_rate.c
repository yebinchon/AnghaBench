
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_clock {int dummy; } ;
struct clk_hw {int dummy; } ;


 long DIV_ROUND_CLOSEST (unsigned long,unsigned int) ;
 unsigned int cpg_sd_clock_calc_div (struct sd_clock*,unsigned long,unsigned long) ;
 struct sd_clock* to_sd_clock (struct clk_hw*) ;

__attribute__((used)) static long cpg_sd_clock_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 struct sd_clock *clock = to_sd_clock(hw);
 unsigned int div = cpg_sd_clock_calc_div(clock, rate, *parent_rate);

 return DIV_ROUND_CLOSEST(*parent_rate, div);
}
