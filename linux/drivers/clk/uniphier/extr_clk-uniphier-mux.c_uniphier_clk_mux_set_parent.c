
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct uniphier_clk_mux {int * vals; int * masks; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_write_bits (int ,int ,int ,int ) ;
 struct uniphier_clk_mux* to_uniphier_clk_mux (struct clk_hw*) ;

__attribute__((used)) static int uniphier_clk_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct uniphier_clk_mux *mux = to_uniphier_clk_mux(hw);

 return regmap_write_bits(mux->regmap, mux->reg, mux->masks[index],
     mux->vals[index]);
}
