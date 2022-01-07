
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_factor_hw {int dummy; } ;
struct owl_clk_common {int dummy; } ;
struct owl_factor {struct owl_clk_common common; struct owl_factor_hw factor_hw; } ;
struct clk_hw {int dummy; } ;


 struct owl_factor* hw_to_owl_factor (struct clk_hw*) ;
 int owl_factor_helper_set_rate (struct owl_clk_common*,struct owl_factor_hw*,unsigned long,unsigned long) ;

__attribute__((used)) static int owl_factor_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct owl_factor *factor = hw_to_owl_factor(hw);
 struct owl_factor_hw *factor_hw = &factor->factor_hw;
 struct owl_clk_common *common = &factor->common;

 return owl_factor_helper_set_rate(common, factor_hw,
     rate, parent_rate);
}
