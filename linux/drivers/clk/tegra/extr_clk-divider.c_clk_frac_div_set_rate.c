
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_clk_frac_div {int shift; int flags; scalar_t__ lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int PERIPH_CLK_UART_DIV_ENB ;
 int TEGRA_DIVIDER_FIXED ;
 int TEGRA_DIVIDER_UART ;
 int div_mask (struct tegra_clk_frac_div*) ;
 int get_div (struct tegra_clk_frac_div*,unsigned long,unsigned long) ;
 int pll_out_override (struct tegra_clk_frac_div*) ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct tegra_clk_frac_div* to_clk_frac_div (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int clk_frac_div_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
 int div;
 unsigned long flags = 0;
 u32 val;

 div = get_div(divider, rate, parent_rate);
 if (div < 0)
  return div;

 if (divider->lock)
  spin_lock_irqsave(divider->lock, flags);

 val = readl_relaxed(divider->reg);
 val &= ~(div_mask(divider) << divider->shift);
 val |= div << divider->shift;

 if (divider->flags & TEGRA_DIVIDER_UART) {
  if (div)
   val |= PERIPH_CLK_UART_DIV_ENB;
  else
   val &= ~PERIPH_CLK_UART_DIV_ENB;
 }

 if (divider->flags & TEGRA_DIVIDER_FIXED)
  val |= pll_out_override(divider);

 writel_relaxed(val, divider->reg);

 if (divider->lock)
  spin_unlock_irqrestore(divider->lock, flags);

 return 0;
}
