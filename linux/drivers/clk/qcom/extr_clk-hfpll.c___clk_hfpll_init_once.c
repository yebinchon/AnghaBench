
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {int config_val; int user_val; int user_vco_mask; unsigned long low_vco_max_rate; int droop_val; scalar_t__ droop_reg; scalar_t__ user_reg; scalar_t__ n_reg; scalar_t__ m_reg; scalar_t__ config_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {int init_done; TYPE_1__ clkr; struct hfpll_data* d; } ;


 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 scalar_t__ likely (int) ;
 int regmap_write (struct regmap*,scalar_t__,int) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static void __clk_hfpll_init_once(struct clk_hw *hw)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;

 if (likely(h->init_done))
  return;


 if (hd->config_val)
  regmap_write(regmap, hd->config_reg, hd->config_val);
 regmap_write(regmap, hd->m_reg, 0);
 regmap_write(regmap, hd->n_reg, 1);

 if (hd->user_reg) {
  u32 regval = hd->user_val;
  unsigned long rate;

  rate = clk_hw_get_rate(hw);


  if (hd->user_vco_mask && rate > hd->low_vco_max_rate)
   regval |= hd->user_vco_mask;
  regmap_write(regmap, hd->user_reg, regval);
 }

 if (hd->droop_reg)
  regmap_write(regmap, hd->droop_reg, hd->droop_val);

 h->init_done = 1;
}
