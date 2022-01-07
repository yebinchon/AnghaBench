
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct clk_hw {int dummy; } ;
struct clk_fixup_div {int (* fixup ) (unsigned int*) ;} ;
struct clk_divider {unsigned int shift; int lock; int reg; } ;


 unsigned int div_mask (struct clk_divider*) ;
 unsigned int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (unsigned int*) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 struct clk_fixup_div* to_clk_fixup_div (struct clk_hw*) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int clk_fixup_div_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_fixup_div *fixup_div = to_clk_fixup_div(hw);
 struct clk_divider *div = to_clk_divider(hw);
 unsigned int divider, value;
 unsigned long flags = 0;
 u32 val;

 divider = parent_rate / rate;


 value = divider - 1;

 if (value > div_mask(div))
  value = div_mask(div);

 spin_lock_irqsave(div->lock, flags);

 val = readl(div->reg);
 val &= ~(div_mask(div) << div->shift);
 val |= value << div->shift;
 fixup_div->fixup(&val);
 writel(val, div->reg);

 spin_unlock_irqrestore(div->lock, flags);

 return 0;
}
