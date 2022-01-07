
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct owl_clk_desc {int num_clks; struct owl_clk_common** clks; } ;
struct owl_clk_common {struct regmap* regmap; } ;



__attribute__((used)) static void owl_clk_set_regmap(const struct owl_clk_desc *desc,
    struct regmap *regmap)
{
 int i;
 struct owl_clk_common *clks;

 for (i = 0; i < desc->num_clks; i++) {
  clks = desc->clks[i];
  if (!clks)
   continue;

  clks->regmap = regmap;
 }
}
