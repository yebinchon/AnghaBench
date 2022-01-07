
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
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg2_clear_force_enable(struct clk_hw *hw)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);

 return regmap_update_bits(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG,
     CMD_ROOT_EN, 0);
}
