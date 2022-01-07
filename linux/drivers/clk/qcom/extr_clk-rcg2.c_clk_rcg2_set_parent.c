
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_4__ {int regmap; } ;
struct clk_rcg2 {TYPE_2__ clkr; TYPE_1__* parent_map; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int cfg; } ;


 int CFG_SRC_SEL_MASK ;
 int CFG_SRC_SEL_SHIFT ;
 int RCG_CFG_OFFSET (struct clk_rcg2*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;
 int update_config (struct clk_rcg2*) ;

__attribute__((used)) static int clk_rcg2_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 int ret;
 u32 cfg = rcg->parent_map[index].cfg << CFG_SRC_SEL_SHIFT;

 ret = regmap_update_bits(rcg->clkr.regmap, RCG_CFG_OFFSET(rcg),
     CFG_SRC_SEL_MASK, cfg);
 if (ret)
  return ret;

 return update_config(rcg);
}
