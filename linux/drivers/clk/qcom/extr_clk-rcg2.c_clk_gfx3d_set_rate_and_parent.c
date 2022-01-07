
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_4__ {int regmap; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_2__ clkr; TYPE_1__* parent_map; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int cfg; } ;


 scalar_t__ CFG_REG ;
 int CFG_SRC_SEL_SHIFT ;
 int regmap_write (int ,scalar_t__,int) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;
 int update_config (struct clk_rcg2*) ;

__attribute__((used)) static int clk_gfx3d_set_rate_and_parent(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate, u8 index)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 u32 cfg;
 int ret;


 cfg = rcg->parent_map[index].cfg << CFG_SRC_SEL_SHIFT;
 ret = regmap_write(rcg->clkr.regmap, rcg->cmd_rcgr + CFG_REG, cfg);
 if (ret)
  return ret;

 return update_config(rcg);
}
