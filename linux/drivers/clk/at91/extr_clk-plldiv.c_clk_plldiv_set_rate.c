
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_plldiv {int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_MCKR ;
 int AT91_PMC_PLLADIV2 ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_plldiv* to_clk_plldiv (struct clk_hw*) ;

__attribute__((used)) static int clk_plldiv_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct clk_plldiv *plldiv = to_clk_plldiv(hw);

 if ((parent_rate != rate) && (parent_rate / 2 != rate))
  return -EINVAL;

 regmap_update_bits(plldiv->regmap, AT91_PMC_MCKR, AT91_PMC_PLLADIV2,
      parent_rate != rate ? AT91_PMC_PLLADIV2 : 0);

 return 0;
}
