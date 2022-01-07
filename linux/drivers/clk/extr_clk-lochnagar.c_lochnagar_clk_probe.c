
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct lochnagar_config {int nparents; int parents; int clks; } ;
struct lochnagar_clk_priv {struct lochnagar_clk* lclks; int regmap; struct device* dev; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct lochnagar_clk {scalar_t__ name; TYPE_1__ hw; struct lochnagar_clk_priv* priv; } ;
struct clk_init_data {scalar_t__ name; int num_parents; int parent_data; int * ops; } ;


 int ARRAY_SIZE (struct lochnagar_clk*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_get_regmap (int ,int *) ;
 int devm_clk_hw_register (struct device*,TYPE_1__*) ;
 struct lochnagar_clk_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,struct lochnagar_clk_priv*) ;
 int lochnagar_clk_ops ;
 int lochnagar_of_clk_hw_get ;
 int lochnagar_of_match ;
 int memcpy (struct lochnagar_clk*,int ,int) ;
 struct of_device_id* of_match_device (int ,struct device*) ;

__attribute__((used)) static int lochnagar_clk_probe(struct platform_device *pdev)
{
 struct clk_init_data clk_init = {
  .ops = &lochnagar_clk_ops,
 };
 struct device *dev = &pdev->dev;
 struct lochnagar_clk_priv *priv;
 const struct of_device_id *of_id;
 struct lochnagar_clk *lclk;
 struct lochnagar_config *conf;
 int ret, i;

 of_id = of_match_device(lochnagar_of_match, dev);
 if (!of_id)
  return -EINVAL;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;
 priv->regmap = dev_get_regmap(dev->parent, ((void*)0));
 conf = (struct lochnagar_config *)of_id->data;

 memcpy(priv->lclks, conf->clks, sizeof(priv->lclks));

 clk_init.parent_data = conf->parents;
 clk_init.num_parents = conf->nparents;

 for (i = 0; i < ARRAY_SIZE(priv->lclks); i++) {
  lclk = &priv->lclks[i];

  if (!lclk->name)
   continue;

  clk_init.name = lclk->name;

  lclk->priv = priv;
  lclk->hw.init = &clk_init;

  ret = devm_clk_hw_register(dev, &lclk->hw);
  if (ret) {
   dev_err(dev, "Failed to register %s: %d\n",
    lclk->name, ret);
   return ret;
  }
 }

 ret = devm_of_clk_add_hw_provider(dev, lochnagar_of_clk_hw_get, priv);
 if (ret < 0)
  dev_err(dev, "Failed to register provider: %d\n", ret);

 return ret;
}
