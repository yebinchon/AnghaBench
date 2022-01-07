
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct lochnagar_clk_priv {int dev; struct regmap* regmap; } ;
struct lochnagar_clk {int name; int ena_mask; int cfg_reg; struct lochnagar_clk_priv* priv; } ;
struct clk_hw {int dummy; } ;


 int dev_dbg (int ,char*,int ,int) ;
 struct lochnagar_clk* lochnagar_hw_to_lclk (struct clk_hw*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void lochnagar_clk_unprepare(struct clk_hw *hw)
{
 struct lochnagar_clk *lclk = lochnagar_hw_to_lclk(hw);
 struct lochnagar_clk_priv *priv = lclk->priv;
 struct regmap *regmap = priv->regmap;
 int ret;

 ret = regmap_update_bits(regmap, lclk->cfg_reg, lclk->ena_mask, 0);
 if (ret < 0)
  dev_dbg(priv->dev, "Failed to unprepare %s: %d\n",
   lclk->name, ret);
}
