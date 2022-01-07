
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int mtk_cg_set_bit_no_setclr (struct clk_hw*) ;

__attribute__((used)) static int mtk_cg_enable_inv_no_setclr(struct clk_hw *hw)
{
 mtk_cg_set_bit_no_setclr(hw);

 return 0;
}
