
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_sys_clk {int slew_reg; } ;
struct clk_hw {int dummy; } ;


 int SLEW_SYSDIV ;
 int SLEW_SYSDIV_SHIFT ;
 struct pic32_sys_clk* clkhw_to_sys_clk (struct clk_hw*) ;
 int readl (int ) ;

__attribute__((used)) static unsigned long sclk_get_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 struct pic32_sys_clk *sclk = clkhw_to_sys_clk(hw);
 u32 div;

 div = (readl(sclk->slew_reg) >> SLEW_SYSDIV_SHIFT) & SLEW_SYSDIV;
 div += 1;

 return parent_rate / div;
}
