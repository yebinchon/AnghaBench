
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int mtk_cg_clr_bit_no_setclr (struct clk_hw*) ;

__attribute__((used)) static void mtk_cg_disable_inv_no_setclr(struct clk_hw *hw)
{
 mtk_cg_clr_bit_no_setclr(hw);
}
