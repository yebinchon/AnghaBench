
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ingenic_tcu_clk_info {int gate_bit; } ;
struct ingenic_tcu_clk {TYPE_1__* tcu; struct ingenic_tcu_clk_info* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int map; } ;


 unsigned int BIT (int ) ;
 int TCU_REG_TSR ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ingenic_tcu_clk* to_tcu_clk (struct clk_hw*) ;

__attribute__((used)) static int ingenic_tcu_is_enabled(struct clk_hw *hw)
{
 struct ingenic_tcu_clk *tcu_clk = to_tcu_clk(hw);
 const struct ingenic_tcu_clk_info *info = tcu_clk->info;
 unsigned int value;

 regmap_read(tcu_clk->tcu->map, TCU_REG_TSR, &value);

 return !(value & BIT(info->gate_bit));
}
