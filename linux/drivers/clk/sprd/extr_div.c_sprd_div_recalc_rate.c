
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_div {int div; int common; } ;
struct clk_hw {int dummy; } ;


 struct sprd_div* hw_to_sprd_div (struct clk_hw*) ;
 unsigned long sprd_div_helper_recalc_rate (int *,int *,unsigned long) ;

__attribute__((used)) static unsigned long sprd_div_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct sprd_div *cd = hw_to_sprd_div(hw);

 return sprd_div_helper_recalc_rate(&cd->common, &cd->div, parent_rate);
}
