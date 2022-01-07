
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {int lock_bit; scalar_t__ status_reg; scalar_t__ mode_reg; } ;
struct clk_hw {int clk; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;


 int BIT (int ) ;
 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int WARN (int,char*,int ) ;
 int __clk_get_name (int ) ;
 int __clk_hfpll_init_once (struct clk_hw*) ;
 int clk_hfpll_disable (struct clk_hw*) ;
 int regmap_read (struct regmap*,scalar_t__,int*) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static void clk_hfpll_init(struct clk_hw *hw)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;
 u32 mode, status;

 regmap_read(regmap, hd->mode_reg, &mode);
 if (mode != (PLL_BYPASSNL | PLL_RESET_N | PLL_OUTCTRL)) {
  __clk_hfpll_init_once(hw);
  return;
 }

 if (hd->status_reg) {
  regmap_read(regmap, hd->status_reg, &status);
  if (!(status & BIT(hd->lock_bit))) {
   WARN(1, "HFPLL %s is ON, but not locked!\n",
        __clk_get_name(hw->clk));
   clk_hfpll_disable(hw);
   __clk_hfpll_init_once(hw);
  }
 }
}
