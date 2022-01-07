
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_clk_gate {int bit; int clr_ofs; int regmap; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int regmap_write (int ,int ,int ) ;
 struct mtk_clk_gate* to_mtk_clk_gate (struct clk_hw*) ;

__attribute__((used)) static void mtk_cg_clr_bit(struct clk_hw *hw)
{
 struct mtk_clk_gate *cg = to_mtk_clk_gate(hw);

 regmap_write(cg->regmap, cg->clr_ofs, BIT(cg->bit));
}
