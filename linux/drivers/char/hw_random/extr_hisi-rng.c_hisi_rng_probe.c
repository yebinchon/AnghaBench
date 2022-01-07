
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_2__ {int read; int cleanup; int init; int name; } ;
struct hisi_rng {TYPE_1__ rng; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct hisi_rng* devm_kzalloc (int *,int,int ) ;
 int hisi_rng_cleanup ;
 int hisi_rng_init ;
 int hisi_rng_read ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hisi_rng*) ;

__attribute__((used)) static int hisi_rng_probe(struct platform_device *pdev)
{
 struct hisi_rng *rng;
 struct resource *res;
 int ret;

 rng = devm_kzalloc(&pdev->dev, sizeof(*rng), GFP_KERNEL);
 if (!rng)
  return -ENOMEM;

 platform_set_drvdata(pdev, rng);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rng->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rng->base))
  return PTR_ERR(rng->base);

 rng->rng.name = pdev->name;
 rng->rng.init = hisi_rng_init;
 rng->rng.cleanup = hisi_rng_cleanup;
 rng->rng.read = hisi_rng_read;

 ret = devm_hwrng_register(&pdev->dev, &rng->rng);
 if (ret) {
  dev_err(&pdev->dev, "failed to register hwrng\n");
  return ret;
 }

 return 0;
}
