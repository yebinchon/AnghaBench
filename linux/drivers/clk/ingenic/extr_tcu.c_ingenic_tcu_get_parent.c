
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ingenic_tcu_clk_info {int tcsr_reg; } ;
struct ingenic_tcu_clk {int idx; TYPE_1__* tcu; struct ingenic_tcu_clk_info* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int map; } ;


 unsigned int TCU_TCSR_PARENT_CLOCK_MASK ;
 int WARN_ONCE (int,char*,int ) ;
 scalar_t__ ffs (unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ingenic_tcu_clk* to_tcu_clk (struct clk_hw*) ;

__attribute__((used)) static u8 ingenic_tcu_get_parent(struct clk_hw *hw)
{
 struct ingenic_tcu_clk *tcu_clk = to_tcu_clk(hw);
 const struct ingenic_tcu_clk_info *info = tcu_clk->info;
 unsigned int val = 0;
 int ret;

 ret = regmap_read(tcu_clk->tcu->map, info->tcsr_reg, &val);
 WARN_ONCE(ret < 0, "Unable to read TCSR %d", tcu_clk->idx);

 return ffs(val & TCU_TCSR_PARENT_CLOCK_MASK) - 1;
}
