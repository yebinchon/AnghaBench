
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct hfpll_data {int mode_reg; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;


 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int regmap_update_bits (struct regmap*,int ,int,int ) ;

__attribute__((used)) static void __clk_hfpll_disable(struct clk_hfpll *h)
{
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;





 regmap_update_bits(regmap, hd->mode_reg,
      PLL_BYPASSNL | PLL_RESET_N | PLL_OUTCTRL, 0);
}
