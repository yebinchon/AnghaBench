
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_periph_clk {int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 int PB_DIV_ENABLE ;
 int PIC32_CLR (int ) ;
 struct pic32_periph_clk* clkhw_to_pbclk (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void pbclk_disable(struct clk_hw *hw)
{
 struct pic32_periph_clk *pb = clkhw_to_pbclk(hw);

 writel(PB_DIV_ENABLE, PIC32_CLR(pb->ctrl_reg));
}
