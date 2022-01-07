
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_plt {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PMC_MASK_CLK_FREQ ;
 int plt_clk_reg_update (struct clk_plt*,int ,int ) ;
 int plt_parent_to_reg (int ) ;
 struct clk_plt* to_clk_plt (struct clk_hw*) ;

__attribute__((used)) static int plt_clk_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_plt *clk = to_clk_plt(hw);

 plt_clk_reg_update(clk, PMC_MASK_CLK_FREQ, plt_parent_to_reg(index));

 return 0;
}
