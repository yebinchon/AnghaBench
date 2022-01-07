
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_clk_gate {int bit; int sta_ofs; int regmap; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int regmap_read (int ,int ,int *) ;
 struct mtk_clk_gate* to_mtk_clk_gate (struct clk_hw*) ;

__attribute__((used)) static int mtk_cg_bit_is_cleared(struct clk_hw *hw)
{
 struct mtk_clk_gate *cg = to_mtk_clk_gate(hw);
 u32 val;

 regmap_read(cg->regmap, cg->sta_ofs, &val);

 val &= BIT(cg->bit);

 return val == 0;
}
