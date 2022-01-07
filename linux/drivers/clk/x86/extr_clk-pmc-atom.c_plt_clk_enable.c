
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plt {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PMC_CLK_CTL_FORCE_ON ;
 int PMC_MASK_CLK_CTL ;
 int plt_clk_reg_update (struct clk_plt*,int ,int ) ;
 struct clk_plt* to_clk_plt (struct clk_hw*) ;

__attribute__((used)) static int plt_clk_enable(struct clk_hw *hw)
{
 struct clk_plt *clk = to_clk_plt(hw);

 plt_clk_reg_update(clk, PMC_MASK_CLK_CTL, PMC_CLK_CTL_FORCE_ON);

 return 0;
}
