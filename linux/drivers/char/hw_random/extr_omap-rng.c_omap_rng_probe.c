
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int quality; unsigned long priv; int name; int cleanup; int init; int read; } ;
struct omap_rng_dev {int * clk; int * clk_reg; int * base; TYPE_1__ rng; struct device* dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int RNG_REV_REG ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 int devm_hwrng_register (struct device*,TYPE_1__*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_kstrdup (struct device*,int ,int ) ;
 struct omap_rng_dev* devm_kzalloc (struct device*,int,int ) ;
 int get_omap_rng_device_details (struct omap_rng_dev*) ;
 int of_get_omap_rng_device_details (struct omap_rng_dev*,struct platform_device*) ;
 int omap_rng_cleanup ;
 int omap_rng_do_read ;
 int omap_rng_init ;
 int omap_rng_read (struct omap_rng_dev*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct omap_rng_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int omap_rng_probe(struct platform_device *pdev)
{
 struct omap_rng_dev *priv;
 struct resource *res;
 struct device *dev = &pdev->dev;
 int ret;

 priv = devm_kzalloc(dev, sizeof(struct omap_rng_dev), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->rng.read = omap_rng_do_read;
 priv->rng.init = omap_rng_init;
 priv->rng.cleanup = omap_rng_cleanup;
 priv->rng.quality = 900;

 priv->rng.priv = (unsigned long)priv;
 platform_set_drvdata(pdev, priv);
 priv->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto err_ioremap;
 }

 priv->rng.name = devm_kstrdup(dev, dev_name(dev), GFP_KERNEL);
 if (!priv->rng.name) {
  ret = -ENOMEM;
  goto err_ioremap;
 }

 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to runtime_get device: %d\n", ret);
  pm_runtime_put_noidle(&pdev->dev);
  goto err_ioremap;
 }

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk) && PTR_ERR(priv->clk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 if (!IS_ERR(priv->clk)) {
  ret = clk_prepare_enable(priv->clk);
  if (ret) {
   dev_err(&pdev->dev,
    "Unable to enable the clk: %d\n", ret);
   goto err_register;
  }
 }

 priv->clk_reg = devm_clk_get(&pdev->dev, "reg");
 if (IS_ERR(priv->clk_reg) && PTR_ERR(priv->clk_reg) == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 if (!IS_ERR(priv->clk_reg)) {
  ret = clk_prepare_enable(priv->clk_reg);
  if (ret) {
   dev_err(&pdev->dev,
    "Unable to enable the register clk: %d\n",
    ret);
   goto err_register;
  }
 }

 ret = (dev->of_node) ? of_get_omap_rng_device_details(priv, pdev) :
    get_omap_rng_device_details(priv);
 if (ret)
  goto err_register;

 ret = devm_hwrng_register(&pdev->dev, &priv->rng);
 if (ret)
  goto err_register;

 dev_info(&pdev->dev, "Random Number Generator ver. %02x\n",
   omap_rng_read(priv, RNG_REV_REG));

 return 0;

err_register:
 priv->base = ((void*)0);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 clk_disable_unprepare(priv->clk_reg);
 clk_disable_unprepare(priv->clk);
err_ioremap:
 dev_err(dev, "initialization failed.\n");
 return ret;
}
