
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_div {int div; int common; } ;
struct clk_hw {int dummy; } ;


 struct sprd_div* hw_to_sprd_div (struct clk_hw*) ;
 int sprd_div_helper_set_rate (int *,int *,unsigned long,unsigned long) ;

__attribute__((used)) static int sprd_div_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct sprd_div *cd = hw_to_sprd_div(hw);

 return sprd_div_helper_set_rate(&cd->common, &cd->div,
     rate, parent_rate);
}
