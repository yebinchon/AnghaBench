
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_fixed_factor {unsigned long long mult; int div; } ;


 int do_div (unsigned long long,int ) ;
 struct clk_fixed_factor* to_clk_fixed_factor (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_factor_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_fixed_factor *fix = to_clk_fixed_factor(hw);
 unsigned long long int rate;

 rate = (unsigned long long int)parent_rate * fix->mult;
 do_div(rate, fix->div);
 return (unsigned long)rate;
}
