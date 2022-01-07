
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
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;


 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int regmap_read (struct regmap*,int ,int*) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static int hfpll_is_enabled(struct clk_hw *hw)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;
 u32 mode;

 regmap_read(regmap, hd->mode_reg, &mode);
 mode &= 0x7;
 return mode == (PLL_BYPASSNL | PLL_RESET_N | PLL_OUTCTRL);
}
