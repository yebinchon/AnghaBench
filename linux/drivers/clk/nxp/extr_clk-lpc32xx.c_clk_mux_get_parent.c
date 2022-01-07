
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct lpc32xx_clk_mux {size_t shift; size_t mask; size_t* table; int reg; } ;
struct clk_hw {int dummy; } ;


 size_t EINVAL ;
 size_t clk_hw_get_num_parents (struct clk_hw*) ;
 int clk_regmap ;
 int regmap_read (int ,int ,size_t*) ;
 struct lpc32xx_clk_mux* to_lpc32xx_mux (struct clk_hw*) ;

__attribute__((used)) static u8 clk_mux_get_parent(struct clk_hw *hw)
{
 struct lpc32xx_clk_mux *mux = to_lpc32xx_mux(hw);
 u32 num_parents = clk_hw_get_num_parents(hw);
 u32 val;

 regmap_read(clk_regmap, mux->reg, &val);
 val >>= mux->shift;
 val &= mux->mask;

 if (mux->table) {
  u32 i;

  for (i = 0; i < num_parents; i++)
   if (mux->table[i] == val)
    return i;
  return -EINVAL;
 }

 if (val >= num_parents)
  return -EINVAL;

 return val;
}
