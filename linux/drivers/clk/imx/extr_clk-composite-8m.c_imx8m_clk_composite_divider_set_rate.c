
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider {int shift; int lock; int reg; int width; } ;


 int EINVAL ;
 int PCG_DIV_SHIFT ;
 int PCG_DIV_WIDTH ;
 int clk_div_mask (int ) ;
 int imx8m_clk_composite_compute_dividers (unsigned long,unsigned long,int*,int*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
     unsigned long rate,
     unsigned long parent_rate)
{
 struct clk_divider *divider = to_clk_divider(hw);
 unsigned long flags = 0;
 int prediv_value;
 int div_value;
 int ret;
 u32 val;

 ret = imx8m_clk_composite_compute_dividers(rate, parent_rate,
      &prediv_value, &div_value);
 if (ret)
  return -EINVAL;

 spin_lock_irqsave(divider->lock, flags);

 val = readl(divider->reg);
 val &= ~((clk_div_mask(divider->width) << divider->shift) |
   (clk_div_mask(PCG_DIV_WIDTH) << PCG_DIV_SHIFT));

 val |= (u32)(prediv_value - 1) << divider->shift;
 val |= (u32)(div_value - 1) << PCG_DIV_SHIFT;
 writel(val, divider->reg);

 spin_unlock_irqrestore(divider->lock, flags);

 return ret;
}
