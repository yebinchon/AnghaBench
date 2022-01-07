
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_rcg2 {int safe_src_index; scalar_t__ cmd_rcgr; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ CFG_REG ;
 int CFG_SRC_SEL_SHIFT ;
 int clk_rcg2_clear_force_enable (struct clk_hw*) ;
 int clk_rcg2_set_force_enable (struct clk_hw*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_write (int ,scalar_t__,int) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;
 int update_config (struct clk_rcg2*) ;

__attribute__((used)) static void clk_rcg2_shared_disable(struct clk_hw *hw)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 u32 cfg;





 regmap_read(rcg->clkr.regmap, rcg->cmd_rcgr + CFG_REG, &cfg);
 clk_rcg2_set_force_enable(hw);

 regmap_write(rcg->clkr.regmap, rcg->cmd_rcgr + CFG_REG,
       rcg->safe_src_index << CFG_SRC_SEL_SHIFT);

 update_config(rcg);

 clk_rcg2_clear_force_enable(hw);


 regmap_write(rcg->clkr.regmap, rcg->cmd_rcgr + CFG_REG, cfg);
}
