
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_clk_gate {int sta_ofs; int regmap; int bit; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct mtk_clk_gate* to_mtk_clk_gate (struct clk_hw*) ;

__attribute__((used)) static void mtk_cg_set_bit_no_setclr(struct clk_hw *hw)
{
 struct mtk_clk_gate *cg = to_mtk_clk_gate(hw);
 u32 cgbit = BIT(cg->bit);

 regmap_update_bits(cg->regmap, cg->sta_ofs, cgbit, cgbit);
}
