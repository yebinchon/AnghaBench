
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xgene_rng_dev {int irq; int clk; int csr_base; int * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {unsigned long priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int *,char*,int ,int) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct xgene_rng_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct xgene_rng_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xgene_rng_dev*) ;
 TYPE_1__ xgene_rng_func ;
 int xgene_rng_irq_handler ;

__attribute__((used)) static int xgene_rng_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct xgene_rng_dev *ctx;
 int rc = 0;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = &pdev->dev;
 platform_set_drvdata(pdev, ctx);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ctx->csr_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ctx->csr_base))
  return PTR_ERR(ctx->csr_base);

 rc = platform_get_irq(pdev, 0);
 if (rc < 0) {
  dev_err(&pdev->dev, "No IRQ resource\n");
  return rc;
 }
 ctx->irq = rc;

 dev_dbg(&pdev->dev, "APM X-Gene RNG BASE %p ALARM IRQ %d",
  ctx->csr_base, ctx->irq);

 rc = devm_request_irq(&pdev->dev, ctx->irq, xgene_rng_irq_handler, 0,
    dev_name(&pdev->dev), ctx);
 if (rc) {
  dev_err(&pdev->dev, "Could not request RNG alarm IRQ\n");
  return rc;
 }


 ctx->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(ctx->clk)) {
  dev_warn(&pdev->dev, "Couldn't get the clock for RNG\n");
 } else {
  rc = clk_prepare_enable(ctx->clk);
  if (rc) {
   dev_warn(&pdev->dev,
     "clock prepare enable failed for RNG");
   return rc;
  }
 }

 xgene_rng_func.priv = (unsigned long) ctx;

 rc = devm_hwrng_register(&pdev->dev, &xgene_rng_func);
 if (rc) {
  dev_err(&pdev->dev, "RNG registering failed error %d\n", rc);
  if (!IS_ERR(ctx->clk))
   clk_disable_unprepare(ctx->clk);
  return rc;
 }

 rc = device_init_wakeup(&pdev->dev, 1);
 if (rc) {
  dev_err(&pdev->dev, "RNG device_init_wakeup failed error %d\n",
   rc);
  if (!IS_ERR(ctx->clk))
   clk_disable_unprepare(ctx->clk);
  return rc;
 }

 return 0;
}
