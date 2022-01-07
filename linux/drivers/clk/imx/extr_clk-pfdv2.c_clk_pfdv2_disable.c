
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pfdv2 {int gate_bit; int reg; } ;
struct clk_hw {int dummy; } ;


 int pfd_lock ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_pfdv2* to_clk_pfdv2 (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static void clk_pfdv2_disable(struct clk_hw *hw)
{
 struct clk_pfdv2 *pfd = to_clk_pfdv2(hw);
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&pfd_lock, flags);
 val = readl_relaxed(pfd->reg);
 val |= (1 << pfd->gate_bit);
 writel_relaxed(val, pfd->reg);
 spin_unlock_irqrestore(&pfd_lock, flags);
}
