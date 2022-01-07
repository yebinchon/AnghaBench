
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_2__ {int read; int name; } ;
struct atmel_trng {int clk; TYPE_1__ rng; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atmel_trng_enable (struct atmel_trng*) ;
 int atmel_trng_read ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (int *,int *) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct atmel_trng* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_trng*) ;

__attribute__((used)) static int atmel_trng_probe(struct platform_device *pdev)
{
 struct atmel_trng *trng;
 struct resource *res;
 int ret;

 trng = devm_kzalloc(&pdev->dev, sizeof(*trng), GFP_KERNEL);
 if (!trng)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 trng->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(trng->base))
  return PTR_ERR(trng->base);

 trng->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(trng->clk))
  return PTR_ERR(trng->clk);

 ret = clk_prepare_enable(trng->clk);
 if (ret)
  return ret;

 atmel_trng_enable(trng);
 trng->rng.name = pdev->name;
 trng->rng.read = atmel_trng_read;

 ret = devm_hwrng_register(&pdev->dev, &trng->rng);
 if (ret)
  goto err_register;

 platform_set_drvdata(pdev, trng);

 return 0;

err_register:
 clk_disable_unprepare(trng->clk);
 return ret;
}
