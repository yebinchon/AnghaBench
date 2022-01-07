
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct regmap {int dummy; } ;
struct lochnagar_clk_priv {int dev; struct regmap* regmap; } ;
struct lochnagar_clk {unsigned int src_mask; int name; int src_reg; struct lochnagar_clk_priv* priv; } ;
struct clk_hw {int dummy; } ;


 unsigned int clk_hw_get_num_parents (struct clk_hw*) ;
 int dev_dbg (int ,char*,int ,int) ;
 struct lochnagar_clk* lochnagar_hw_to_lclk (struct clk_hw*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static u8 lochnagar_clk_get_parent(struct clk_hw *hw)
{
 struct lochnagar_clk *lclk = lochnagar_hw_to_lclk(hw);
 struct lochnagar_clk_priv *priv = lclk->priv;
 struct regmap *regmap = priv->regmap;
 unsigned int val;
 int ret;

 ret = regmap_read(regmap, lclk->src_reg, &val);
 if (ret < 0) {
  dev_dbg(priv->dev, "Failed to read parent of %s: %d\n",
   lclk->name, ret);
  return clk_hw_get_num_parents(hw);
 }

 val &= lclk->src_mask;

 return val;
}
