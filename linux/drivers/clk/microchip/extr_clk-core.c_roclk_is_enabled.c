
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_ref_osc {int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 int REFO_ON ;
 struct pic32_ref_osc* clkhw_to_refosc (struct clk_hw*) ;
 int readl (int ) ;

__attribute__((used)) static int roclk_is_enabled(struct clk_hw *hw)
{
 struct pic32_ref_osc *refo = clkhw_to_refosc(hw);

 return readl(refo->ctrl_reg) & REFO_ON;
}
