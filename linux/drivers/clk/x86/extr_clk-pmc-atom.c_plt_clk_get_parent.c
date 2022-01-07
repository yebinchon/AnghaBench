
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_plt {int reg; } ;
struct clk_hw {int dummy; } ;


 int plt_reg_to_parent (int ) ;
 int readl (int ) ;
 struct clk_plt* to_clk_plt (struct clk_hw*) ;

__attribute__((used)) static u8 plt_clk_get_parent(struct clk_hw *hw)
{
 struct clk_plt *clk = to_clk_plt(hw);
 u32 value;

 value = readl(clk->reg);

 return plt_reg_to_parent(value);
}
