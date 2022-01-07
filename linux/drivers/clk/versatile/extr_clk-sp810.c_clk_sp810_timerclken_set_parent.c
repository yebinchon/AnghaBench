
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_sp810_timerclken {int channel; struct clk_sp810* sp810; } ;
struct clk_sp810 {int lock; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 scalar_t__ SCCTRL ;
 int SCCTRL_TIMERENnSEL_SHIFT (int ) ;
 scalar_t__ WARN_ON (int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_sp810_timerclken* to_clk_sp810_timerclken (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clk_sp810_timerclken_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
 struct clk_sp810 *sp810 = timerclken->sp810;
 u32 val, shift = SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel);
 unsigned long flags = 0;

 if (WARN_ON(index > 1))
  return -EINVAL;

 spin_lock_irqsave(&sp810->lock, flags);

 val = readl(sp810->base + SCCTRL);
 val &= ~(1 << shift);
 val |= index << shift;
 writel(val, sp810->base + SCCTRL);

 spin_unlock_irqrestore(&sp810->lock, flags);

 return 0;
}
