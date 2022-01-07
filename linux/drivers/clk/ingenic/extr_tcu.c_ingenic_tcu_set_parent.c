
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ingenic_tcu_clk_info {int tcsr_reg; } ;
struct ingenic_tcu_clk {int idx; TYPE_1__* tcu; struct ingenic_tcu_clk_info* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int map; } ;


 int BIT (int ) ;
 int TCU_TCSR_PARENT_CLOCK_MASK ;
 int WARN_ONCE (int,char*,int ) ;
 int ingenic_tcu_disable_regs (struct clk_hw*) ;
 int ingenic_tcu_enable_regs (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ingenic_tcu_clk* to_tcu_clk (struct clk_hw*) ;

__attribute__((used)) static int ingenic_tcu_set_parent(struct clk_hw *hw, u8 idx)
{
 struct ingenic_tcu_clk *tcu_clk = to_tcu_clk(hw);
 const struct ingenic_tcu_clk_info *info = tcu_clk->info;
 bool was_enabled;
 int ret;

 was_enabled = ingenic_tcu_enable_regs(hw);

 ret = regmap_update_bits(tcu_clk->tcu->map, info->tcsr_reg,
     TCU_TCSR_PARENT_CLOCK_MASK, BIT(idx));
 WARN_ONCE(ret < 0, "Unable to update TCSR %d", tcu_clk->idx);

 if (!was_enabled)
  ingenic_tcu_disable_regs(hw);

 return 0;
}
