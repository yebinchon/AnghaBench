
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sama5d4_h32mx {int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int AT91_PMC_H32MXDIV ;
 int AT91_PMC_MCKR ;
 unsigned long H32MX_MAX_FREQ ;
 int pr_warn (char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_sama5d4_h32mx* to_clk_sama5d4_h32mx (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
 unsigned int mckr;

 regmap_read(h32mxclk->regmap, AT91_PMC_MCKR, &mckr);
 if (mckr & AT91_PMC_H32MXDIV)
  return parent_rate / 2;

 if (parent_rate > H32MX_MAX_FREQ)
  pr_warn("H32MX clock is too fast\n");
 return parent_rate;
}
