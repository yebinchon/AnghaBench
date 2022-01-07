
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int factor_hw; } ;
struct owl_composite {TYPE_1__ rate; int common; } ;
struct clk_hw {int dummy; } ;


 struct owl_composite* hw_to_owl_comp (struct clk_hw*) ;
 int owl_factor_helper_set_rate (int *,int *,unsigned long,unsigned long) ;

__attribute__((used)) static int owl_comp_fact_set_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long parent_rate)
{
 struct owl_composite *comp = hw_to_owl_comp(hw);

 return owl_factor_helper_set_rate(&comp->common,
     &comp->rate.factor_hw,
     rate, parent_rate);
}
