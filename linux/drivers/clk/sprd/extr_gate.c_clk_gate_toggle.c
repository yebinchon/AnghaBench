
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_clk_common {int reg; int regmap; } ;
struct sprd_gate {int flags; unsigned int enable_mask; struct sprd_clk_common common; } ;


 int CLK_GATE_SET_TO_DISABLE ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void clk_gate_toggle(const struct sprd_gate *sg, bool en)
{
 const struct sprd_clk_common *common = &sg->common;
 unsigned int reg;
 bool set = sg->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;

 set ^= en;

 regmap_read(common->regmap, common->reg, &reg);

 if (set)
  reg |= sg->enable_mask;
 else
  reg &= ~sg->enable_mask;

 regmap_write(common->regmap, common->reg, reg);
}
