
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int sa11x0_getspeed (int ) ;

__attribute__((used)) static unsigned long clk_mpll_recalc_rate(struct clk_hw *hw,
 unsigned long prate)
{
 return sa11x0_getspeed(0) * 1000;
}
