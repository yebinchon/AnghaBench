
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_ref_osc {int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 int PIC32_SET (int ) ;
 int REFO_OE ;
 int REFO_ON ;
 struct pic32_ref_osc* clkhw_to_refosc (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int roclk_enable(struct clk_hw *hw)
{
 struct pic32_ref_osc *refo = clkhw_to_refosc(hw);

 writel(REFO_ON | REFO_OE, PIC32_SET(refo->ctrl_reg));
 return 0;
}
