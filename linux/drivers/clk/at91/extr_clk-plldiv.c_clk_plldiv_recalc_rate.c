
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plldiv {int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_MCKR ;
 unsigned int AT91_PMC_PLLADIV2 ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_plldiv* to_clk_plldiv (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_plldiv_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct clk_plldiv *plldiv = to_clk_plldiv(hw);
 unsigned int mckr;

 regmap_read(plldiv->regmap, AT91_PMC_MCKR, &mckr);

 if (mckr & AT91_PMC_PLLADIV2)
  return parent_rate / 2;

 return parent_rate;
}
