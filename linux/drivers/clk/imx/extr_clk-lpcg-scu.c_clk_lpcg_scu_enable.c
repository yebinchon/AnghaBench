
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_lpcg_scu {int bit_idx; int reg; scalar_t__ hw_gate; } ;
struct clk_hw {int dummy; } ;


 int CLK_GATE_SCU_LPCG_HW_SEL ;
 int CLK_GATE_SCU_LPCG_MASK ;
 int CLK_GATE_SCU_LPCG_SW_SEL ;
 int imx_lpcg_scu_lock ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_lpcg_scu* to_clk_lpcg_scu (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_lpcg_scu_enable(struct clk_hw *hw)
{
 struct clk_lpcg_scu *clk = to_clk_lpcg_scu(hw);
 unsigned long flags;
 u32 reg, val;

 spin_lock_irqsave(&imx_lpcg_scu_lock, flags);

 reg = readl_relaxed(clk->reg);
 reg &= ~(CLK_GATE_SCU_LPCG_MASK << clk->bit_idx);

 val = CLK_GATE_SCU_LPCG_SW_SEL;
 if (clk->hw_gate)
  val |= CLK_GATE_SCU_LPCG_HW_SEL;

 reg |= val << clk->bit_idx;
 writel(reg, clk->reg);

 spin_unlock_irqrestore(&imx_lpcg_scu_lock, flags);

 return 0;
}
