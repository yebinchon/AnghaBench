
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_comp {int div; int common; } ;
struct clk_hw {int dummy; } ;


 struct sprd_comp* hw_to_sprd_comp (struct clk_hw*) ;
 int sprd_div_helper_set_rate (int *,int *,unsigned long,unsigned long) ;

__attribute__((used)) static int sprd_comp_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct sprd_comp *cc = hw_to_sprd_comp(hw);

 return sprd_div_helper_set_rate(&cc->common, &cc->div,
           rate, parent_rate);
}
