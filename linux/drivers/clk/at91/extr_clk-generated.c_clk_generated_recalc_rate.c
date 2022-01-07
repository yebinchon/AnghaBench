
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_generated {scalar_t__ gckdiv; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,scalar_t__) ;
 struct clk_generated* to_clk_generated (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_generated_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct clk_generated *gck = to_clk_generated(hw);

 return DIV_ROUND_CLOSEST(parent_rate, gck->gckdiv + 1);
}
