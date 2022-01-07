
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_gate_hw {int gate_flags; int bit_idx; int reg; } ;
struct owl_clk_common {int regmap; } ;


 int BIT (int ) ;
 int CLK_GATE_SET_TO_DISABLE ;
 int regmap_read (int ,int ,int*) ;

int owl_gate_clk_is_enabled(const struct owl_clk_common *common,
     const struct owl_gate_hw *gate_hw)
{
 u32 reg;

 regmap_read(common->regmap, gate_hw->reg, &reg);

 if (gate_hw->gate_flags & CLK_GATE_SET_TO_DISABLE)
  reg ^= BIT(gate_hw->bit_idx);

 return !!(reg & BIT(gate_hw->bit_idx));
}
