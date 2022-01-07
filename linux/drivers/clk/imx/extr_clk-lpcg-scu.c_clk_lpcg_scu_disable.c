
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_lpcg_scu {int bit_idx; int reg; } ;
struct clk_hw {int dummy; } ;


 int CLK_GATE_SCU_LPCG_MASK ;
 int imx_lpcg_scu_lock ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_lpcg_scu* to_clk_lpcg_scu (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static void clk_lpcg_scu_disable(struct clk_hw *hw)
{
 struct clk_lpcg_scu *clk = to_clk_lpcg_scu(hw);
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&imx_lpcg_scu_lock, flags);

 reg = readl_relaxed(clk->reg);
 reg &= ~(CLK_GATE_SCU_LPCG_MASK << clk->bit_idx);
 writel(reg, clk->reg);

 spin_unlock_irqrestore(&imx_lpcg_scu_lock, flags);
}
