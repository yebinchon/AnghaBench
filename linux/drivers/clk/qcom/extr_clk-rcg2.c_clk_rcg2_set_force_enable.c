
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regmap; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ CMD_REG ;
 int CMD_ROOT_EN ;
 int ETIMEDOUT ;
 char* clk_hw_get_name (struct clk_hw*) ;
 scalar_t__ clk_rcg2_is_enabled (struct clk_hw*) ;
 int pr_err (char*,char const*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int clk_rcg2_set_force_enable(struct clk_hw *hw)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 const char *name = clk_hw_get_name(hw);
 int ret, count;

 ret = regmap_update_bits(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG,
     CMD_ROOT_EN, CMD_ROOT_EN);
 if (ret)
  return ret;


 for (count = 500; count > 0; count--) {
  if (clk_rcg2_is_enabled(hw))
   return 0;

  udelay(1);
 }

 pr_err("%s: RCG did not turn on\n", name);
 return -ETIMEDOUT;
}
