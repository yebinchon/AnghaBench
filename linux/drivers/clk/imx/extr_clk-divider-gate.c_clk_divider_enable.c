
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider_gate {int cached_val; } ;
struct clk_divider {int shift; int lock; int reg; } ;


 int EINVAL ;
 int clk_hw_get_name (struct clk_hw*) ;
 int pr_err (char*,int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 struct clk_divider_gate* to_clk_divider_gate (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_divider_enable(struct clk_hw *hw)
{
 struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 struct clk_divider *div = to_clk_divider(hw);
 unsigned long flags = 0;
 u32 val;

 if (!div_gate->cached_val) {
  pr_err("%s: no valid preset rate\n", clk_hw_get_name(hw));
  return -EINVAL;
 }

 spin_lock_irqsave(div->lock, flags);

 val = readl(div->reg);
 val |= div_gate->cached_val << div->shift;
 writel(val, div->reg);

 spin_unlock_irqrestore(div->lock, flags);

 return 0;
}
