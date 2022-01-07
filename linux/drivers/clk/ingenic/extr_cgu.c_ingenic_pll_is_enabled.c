
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ingenic_clk {struct ingenic_cgu* cgu; } ;
struct ingenic_cgu_pll_info {int enable_bit; scalar_t__ reg; } ;
struct ingenic_cgu_clk_info {struct ingenic_cgu_pll_info pll; } ;
struct ingenic_cgu {int lock; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ingenic_cgu_clk_info* to_clk_info (struct ingenic_clk*) ;
 struct ingenic_clk* to_ingenic_clk (struct clk_hw*) ;

__attribute__((used)) static int ingenic_pll_is_enabled(struct clk_hw *hw)
{
 struct ingenic_clk *ingenic_clk = to_ingenic_clk(hw);
 struct ingenic_cgu *cgu = ingenic_clk->cgu;
 const struct ingenic_cgu_clk_info *clk_info = to_clk_info(ingenic_clk);
 const struct ingenic_cgu_pll_info *pll_info = &clk_info->pll;
 unsigned long flags;
 u32 ctl;

 spin_lock_irqsave(&cgu->lock, flags);
 ctl = readl(cgu->base + pll_info->reg);
 spin_unlock_irqrestore(&cgu->lock, flags);

 return !!(ctl & BIT(pll_info->enable_bit));
}
