
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_comp {int div; int common; } ;
struct clk_hw {int dummy; } ;


 struct sprd_comp* hw_to_sprd_comp (struct clk_hw*) ;
 unsigned long sprd_div_helper_recalc_rate (int *,int *,unsigned long) ;

__attribute__((used)) static unsigned long sprd_comp_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct sprd_comp *cc = hw_to_sprd_comp(hw);

 return sprd_div_helper_recalc_rate(&cc->common, &cc->div, parent_rate);
}
