
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {unsigned long user_vco_mask; unsigned long low_vco_max_rate; scalar_t__ l_reg; scalar_t__ user_reg; } ;
struct clk_hw {int clk; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {int lock; TYPE_1__ clkr; struct hfpll_data* d; } ;


 int __clk_hfpll_disable (struct clk_hfpll*) ;
 int __clk_hfpll_enable (struct clk_hw*) ;
 int __clk_is_enabled (int ) ;
 int regmap_read (struct regmap*,scalar_t__,unsigned long*) ;
 int regmap_write (struct regmap*,scalar_t__,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static int clk_hfpll_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;
 unsigned long flags;
 u32 l_val, val;
 bool enabled;

 l_val = rate / parent_rate;

 spin_lock_irqsave(&h->lock, flags);

 enabled = __clk_is_enabled(hw->clk);
 if (enabled)
  __clk_hfpll_disable(h);


 if (hd->user_reg && hd->user_vco_mask) {
  regmap_read(regmap, hd->user_reg, &val);
  if (rate <= hd->low_vco_max_rate)
   val &= ~hd->user_vco_mask;
  else
   val |= hd->user_vco_mask;
  regmap_write(regmap, hd->user_reg, val);
 }

 regmap_write(regmap, hd->l_reg, l_val);

 if (enabled)
  __clk_hfpll_enable(hw);

 spin_unlock_irqrestore(&h->lock, flags);

 return 0;
}
