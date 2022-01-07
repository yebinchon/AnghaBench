
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sysctrl {unsigned long rate; } ;
struct clk_hw {int dummy; } ;


 struct clk_sysctrl* to_clk_sysctrl (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_sysctrl_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct clk_sysctrl *clk = to_clk_sysctrl(hw);
 return clk->rate;
}
