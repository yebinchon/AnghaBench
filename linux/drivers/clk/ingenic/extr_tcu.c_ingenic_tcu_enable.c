
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_tcu_clk_info {int gate_bit; } ;
struct ingenic_tcu_clk {struct ingenic_tcu* tcu; struct ingenic_tcu_clk_info* info; } ;
struct ingenic_tcu {int map; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int TCU_REG_TSCR ;
 int regmap_write (int ,int ,int ) ;
 struct ingenic_tcu_clk* to_tcu_clk (struct clk_hw*) ;

__attribute__((used)) static int ingenic_tcu_enable(struct clk_hw *hw)
{
 struct ingenic_tcu_clk *tcu_clk = to_tcu_clk(hw);
 const struct ingenic_tcu_clk_info *info = tcu_clk->info;
 struct ingenic_tcu *tcu = tcu_clk->tcu;

 regmap_write(tcu->map, TCU_REG_TSCR, BIT(info->gate_bit));

 return 0;
}
