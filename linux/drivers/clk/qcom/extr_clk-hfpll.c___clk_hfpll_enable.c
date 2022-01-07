
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {int mode_reg; scalar_t__ status_reg; int lock_bit; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;


 int BIT (int ) ;
 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int __clk_hfpll_init_once (struct clk_hw*) ;
 int regmap_read (struct regmap*,scalar_t__,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static void __clk_hfpll_enable(struct clk_hw *hw)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;
 u32 val;

 __clk_hfpll_init_once(hw);


 regmap_update_bits(regmap, hd->mode_reg, PLL_BYPASSNL, PLL_BYPASSNL);





 udelay(10);


 regmap_update_bits(regmap, hd->mode_reg, PLL_RESET_N, PLL_RESET_N);


 if (hd->status_reg) {
  do {
   regmap_read(regmap, hd->status_reg, &val);
  } while (!(val & BIT(hd->lock_bit)));
 } else {
  udelay(60);
 }


 regmap_update_bits(regmap, hd->mode_reg, PLL_OUTCTRL, PLL_OUTCTRL);
}
