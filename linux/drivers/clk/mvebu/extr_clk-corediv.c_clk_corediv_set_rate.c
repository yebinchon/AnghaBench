
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_corediv_soc_desc {int ratio_reload; scalar_t__ ratio_offset; } ;
struct clk_corediv_desc {int mask; int offset; int fieldbit; } ;
struct clk_corediv {int lock; scalar_t__ reg; struct clk_corediv_desc* desc; struct clk_corediv_soc_desc* soc_desc; } ;


 int BIT (int ) ;
 int CORE_CLK_DIV_RATIO_MASK ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_corediv* to_corediv_clk (struct clk_hw*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clk_corediv_set_rate(struct clk_hw *hwclk, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_corediv *corediv = to_corediv_clk(hwclk);
 const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 const struct clk_corediv_desc *desc = corediv->desc;
 unsigned long flags = 0;
 u32 reg, div;

 div = parent_rate / rate;

 spin_lock_irqsave(&corediv->lock, flags);


 reg = readl(corediv->reg + soc_desc->ratio_offset);
 reg &= ~(desc->mask << desc->offset);
 reg |= (div & desc->mask) << desc->offset;
 writel(reg, corediv->reg + soc_desc->ratio_offset);


 reg = readl(corediv->reg) | BIT(desc->fieldbit);
 writel(reg, corediv->reg);


 reg = readl(corediv->reg) | soc_desc->ratio_reload;
 writel(reg, corediv->reg);





 udelay(1000);
 reg &= ~(CORE_CLK_DIV_RATIO_MASK | soc_desc->ratio_reload);
 writel(reg, corediv->reg);
 udelay(1000);

 spin_unlock_irqrestore(&corediv->lock, flags);

 return 0;
}
