
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_sama5d4_h32mx {int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_H32MXDIV ;
 int AT91_PMC_MCKR ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_sama5d4_h32mx* to_clk_sama5d4_h32mx (struct clk_hw*) ;

__attribute__((used)) static int clk_sama5d4_h32mx_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
 u32 mckr = 0;

 if (parent_rate != rate && (parent_rate / 2) != rate)
  return -EINVAL;

 if ((parent_rate / 2) == rate)
  mckr = AT91_PMC_H32MXDIV;

 regmap_update_bits(h32mxclk->regmap, AT91_PMC_MCKR,
      AT91_PMC_H32MXDIV, mckr);

 return 0;
}
