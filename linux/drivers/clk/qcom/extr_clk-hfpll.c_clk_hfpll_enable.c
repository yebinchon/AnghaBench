
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {int mode_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {int lock; TYPE_1__ clkr; struct hfpll_data* d; } ;


 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int __clk_hfpll_enable (struct clk_hw*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static int clk_hfpll_enable(struct clk_hw *hw)
{
 unsigned long flags;
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;
 u32 mode;

 spin_lock_irqsave(&h->lock, flags);
 regmap_read(regmap, hd->mode_reg, &mode);
 if (!(mode & (PLL_BYPASSNL | PLL_RESET_N | PLL_OUTCTRL)))
  __clk_hfpll_enable(hw);
 spin_unlock_irqrestore(&h->lock, flags);

 return 0;
}
