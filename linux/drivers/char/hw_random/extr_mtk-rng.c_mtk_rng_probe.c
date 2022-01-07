
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_2__ {unsigned long priv; int quality; int read; int cleanup; int init; int name; } ;
struct mtk_rng {TYPE_1__ rng; int base; int clk; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RNG_AUTOSUSPEND_TIMEOUT ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int dev_set_drvdata (int *,struct mtk_rng*) ;
 int devm_clk_get (int *,char*) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct mtk_rng* devm_kzalloc (int *,int,int ) ;
 int mtk_rng_cleanup ;
 int mtk_rng_init ;
 int mtk_rng_read ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int mtk_rng_probe(struct platform_device *pdev)
{
 struct resource *res;
 int ret;
 struct mtk_rng *priv;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "no iomem resource\n");
  return -ENXIO;
 }

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->rng.name = pdev->name;

 priv->rng.init = mtk_rng_init;
 priv->rng.cleanup = mtk_rng_cleanup;

 priv->rng.read = mtk_rng_read;
 priv->rng.priv = (unsigned long)&pdev->dev;
 priv->rng.quality = 900;

 priv->clk = devm_clk_get(&pdev->dev, "rng");
 if (IS_ERR(priv->clk)) {
  ret = PTR_ERR(priv->clk);
  dev_err(&pdev->dev, "no clock for device: %d\n", ret);
  return ret;
 }

 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 ret = devm_hwrng_register(&pdev->dev, &priv->rng);
 if (ret) {
  dev_err(&pdev->dev, "failed to register rng device: %d\n",
   ret);
  return ret;
 }

 dev_set_drvdata(&pdev->dev, priv);
 pm_runtime_set_autosuspend_delay(&pdev->dev, RNG_AUTOSUSPEND_TIMEOUT);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 dev_info(&pdev->dev, "registered RNG driver\n");

 return 0;
}
