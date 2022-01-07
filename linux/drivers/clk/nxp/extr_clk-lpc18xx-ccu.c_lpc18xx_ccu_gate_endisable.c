
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_gate {int reg; } ;


 int LPC18XX_CCU_AUTO ;
 int LPC18XX_CCU_DIV ;
 int LPC18XX_CCU_DIVSTAT ;
 int LPC18XX_CCU_RUN ;
 int readl (int ) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int lpc18xx_ccu_gate_endisable(struct clk_hw *hw, bool enable)
{
 struct clk_gate *gate = to_clk_gate(hw);
 u32 val;





 val = readl(gate->reg);
 if (val & LPC18XX_CCU_DIVSTAT)
  val |= LPC18XX_CCU_DIV;

 if (enable) {
  val |= LPC18XX_CCU_RUN;
 } else {





  val |= LPC18XX_CCU_AUTO;
  writel(val, gate->reg);

  val &= ~LPC18XX_CCU_RUN;
 }

 writel(val, gate->reg);

 return 0;
}
