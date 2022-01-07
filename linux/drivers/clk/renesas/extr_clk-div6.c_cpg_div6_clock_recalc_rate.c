
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct div6_clock {unsigned long div; } ;
struct clk_hw {int dummy; } ;


 struct div6_clock* to_div6_clock (struct clk_hw*) ;

__attribute__((used)) static unsigned long cpg_div6_clock_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct div6_clock *clock = to_div6_clock(hw);

 return parent_rate / clock->div;
}
