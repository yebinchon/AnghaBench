
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uniphier_clk_mux {unsigned int* masks; unsigned int* vals; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct uniphier_clk_mux* to_uniphier_clk_mux (struct clk_hw*) ;

__attribute__((used)) static u8 uniphier_clk_mux_get_parent(struct clk_hw *hw)
{
 struct uniphier_clk_mux *mux = to_uniphier_clk_mux(hw);
 int num_parents = clk_hw_get_num_parents(hw);
 int ret;
 unsigned int val;
 u8 i;

 ret = regmap_read(mux->regmap, mux->reg, &val);
 if (ret)
  return ret;

 for (i = 0; i < num_parents; i++)
  if ((mux->masks[i] & val) == mux->vals[i])
   return i;

 return -EINVAL;
}
