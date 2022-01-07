
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_mux_ssel {unsigned int shift; int width; int* table; } ;
struct sprd_clk_common {int hw; int reg; int regmap; } ;


 int clk_hw_get_num_parents (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

u8 sprd_mux_helper_get_parent(const struct sprd_clk_common *common,
         const struct sprd_mux_ssel *mux)
{
 unsigned int reg;
 u8 parent;
 int num_parents;
 int i;

 regmap_read(common->regmap, common->reg, &reg);
 parent = reg >> mux->shift;
 parent &= (1 << mux->width) - 1;

 if (!mux->table)
  return parent;

 num_parents = clk_hw_get_num_parents(&common->hw);

 for (i = 0; i < num_parents - 1; i++)
  if (parent >= mux->table[i] && parent < mux->table[i + 1])
   return i;

 return num_parents - 1;
}
