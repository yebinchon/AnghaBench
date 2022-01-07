
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_periph_clk {int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 int PB_DIV_ENABLE ;
 struct pic32_periph_clk* clkhw_to_pbclk (struct clk_hw*) ;
 int readl (int ) ;

__attribute__((used)) static int pbclk_is_enabled(struct clk_hw *hw)
{
 struct pic32_periph_clk *pb = clkhw_to_pbclk(hw);

 return readl(pb->ctrl_reg) & PB_DIV_ENABLE;
}
