
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct regmap {int dummy; } ;
struct hfpll_data {int l_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {TYPE_1__ clkr; struct hfpll_data* d; } ;


 int regmap_read (struct regmap*,int ,unsigned long*) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_hfpll_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 struct hfpll_data const *hd = h->d;
 struct regmap *regmap = h->clkr.regmap;
 u32 l_val;

 regmap_read(regmap, hd->l_reg, &l_val);

 return l_val * parent_rate;
}
