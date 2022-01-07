
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {unsigned long priv; int read; int init; int name; } ;
struct exynos_trng_dev {int clk; TYPE_1__ rng; int mem; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int devm_clk_get (int *,char*) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_kstrdup (int *,int ,int ) ;
 struct exynos_trng_dev* devm_kzalloc (int *,int,int ) ;
 int exynos_trng_do_read ;
 int exynos_trng_init ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct exynos_trng_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int exynos_trng_probe(struct platform_device *pdev)
{
 struct exynos_trng_dev *trng;
 struct resource *res;
 int ret = -ENOMEM;

 trng = devm_kzalloc(&pdev->dev, sizeof(*trng), GFP_KERNEL);
 if (!trng)
  return ret;

 trng->rng.name = devm_kstrdup(&pdev->dev, dev_name(&pdev->dev),
          GFP_KERNEL);
 if (!trng->rng.name)
  return ret;

 trng->rng.init = exynos_trng_init;
 trng->rng.read = exynos_trng_do_read;
 trng->rng.priv = (unsigned long) trng;

 platform_set_drvdata(pdev, trng);
 trng->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 trng->mem = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(trng->mem))
  return PTR_ERR(trng->mem);

 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not get runtime PM.\n");
  goto err_pm_get;
 }

 trng->clk = devm_clk_get(&pdev->dev, "secss");
 if (IS_ERR(trng->clk)) {
  ret = PTR_ERR(trng->clk);
  dev_err(&pdev->dev, "Could not get clock.\n");
  goto err_clock;
 }

 ret = clk_prepare_enable(trng->clk);
 if (ret) {
  dev_err(&pdev->dev, "Could not enable the clk.\n");
  goto err_clock;
 }

 ret = devm_hwrng_register(&pdev->dev, &trng->rng);
 if (ret) {
  dev_err(&pdev->dev, "Could not register hwrng device.\n");
  goto err_register;
 }

 dev_info(&pdev->dev, "Exynos True Random Number Generator.\n");

 return 0;

err_register:
 clk_disable_unprepare(trng->clk);

err_clock:
 pm_runtime_put_sync(&pdev->dev);

err_pm_get:
 pm_runtime_disable(&pdev->dev);

 return ret;
}
