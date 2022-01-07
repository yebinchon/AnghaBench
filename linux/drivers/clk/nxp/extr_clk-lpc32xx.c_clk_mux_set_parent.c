
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct lpc32xx_clk_mux {size_t* table; int mask; int shift; int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_regmap ;
 int regmap_update_bits (int ,int ,int,size_t) ;
 struct lpc32xx_clk_mux* to_lpc32xx_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct lpc32xx_clk_mux *mux = to_lpc32xx_mux(hw);

 if (mux->table)
  index = mux->table[index];

 return regmap_update_bits(clk_regmap, mux->reg,
     mux->mask << mux->shift, index << mux->shift);
}
