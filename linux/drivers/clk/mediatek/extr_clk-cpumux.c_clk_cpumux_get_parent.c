
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct mtk_clk_cpumux {unsigned int shift; unsigned int mask; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 struct mtk_clk_cpumux* to_mtk_clk_cpumux (struct clk_hw*) ;

__attribute__((used)) static u8 clk_cpumux_get_parent(struct clk_hw *hw)
{
 struct mtk_clk_cpumux *mux = to_mtk_clk_cpumux(hw);
 unsigned int val;

 regmap_read(mux->regmap, mux->reg, &val);

 val >>= mux->shift;
 val &= mux->mask;

 return val;
}
