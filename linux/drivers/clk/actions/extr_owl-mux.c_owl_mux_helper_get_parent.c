
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct owl_mux_hw {int shift; int width; int reg; } ;
struct owl_clk_common {int regmap; } ;


 int BIT (int ) ;
 int regmap_read (int ,int ,int*) ;

u8 owl_mux_helper_get_parent(const struct owl_clk_common *common,
        const struct owl_mux_hw *mux_hw)
{
 u32 reg;
 u8 parent;

 regmap_read(common->regmap, mux_hw->reg, &reg);
 parent = reg >> mux_hw->shift;
 parent &= BIT(mux_hw->width) - 1;

 return parent;
}
