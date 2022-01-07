
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_branch {int dummy; } ;


 int clk_branch_wait (struct clk_branch*,int,int (*) (struct clk_branch const*,int)) ;
 int clk_disable_regmap (struct clk_hw*) ;
 int clk_enable_regmap (struct clk_hw*) ;
 struct clk_branch* to_clk_branch (struct clk_hw*) ;

__attribute__((used)) static int clk_branch_toggle(struct clk_hw *hw, bool en,
  bool (check_halt)(const struct clk_branch *, bool))
{
 struct clk_branch *br = to_clk_branch(hw);
 int ret;

 if (en) {
  ret = clk_enable_regmap(hw);
  if (ret)
   return ret;
 } else {
  clk_disable_regmap(hw);
 }

 return clk_branch_wait(br, en, check_halt);
}
