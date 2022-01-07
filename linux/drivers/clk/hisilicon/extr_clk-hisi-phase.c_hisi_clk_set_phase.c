
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_hisi_phase {int mask; int shift; int lock; int reg; } ;


 int hisi_phase_degrees_to_regval (struct clk_hisi_phase*,int) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_hisi_phase* to_clk_hisi_phase (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int hisi_clk_set_phase(struct clk_hw *hw, int degrees)
{
 struct clk_hisi_phase *phase = to_clk_hisi_phase(hw);
 unsigned long flags = 0;
 int regval;
 u32 val;

 regval = hisi_phase_degrees_to_regval(phase, degrees);
 if (regval < 0)
  return regval;

 spin_lock_irqsave(phase->lock, flags);

 val = readl(phase->reg);
 val &= ~phase->mask;
 val |= regval << phase->shift;
 writel(val, phase->reg);

 spin_unlock_irqrestore(phase->lock, flags);

 return 0;
}
