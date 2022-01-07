
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_clk_desc {int num_clk_clks; struct sprd_clk_common** clk_clks; } ;
struct sprd_clk_common {struct regmap* regmap; } ;
struct regmap {int dummy; } ;



__attribute__((used)) static void sprd_clk_set_regmap(const struct sprd_clk_desc *desc,
    struct regmap *regmap)
{
 int i;
 struct sprd_clk_common *cclk;

 for (i = 0; i < desc->num_clk_clks; i++) {
  cclk = desc->clk_clks[i];
  if (!cclk)
   continue;

  cclk->regmap = regmap;
 }
}
