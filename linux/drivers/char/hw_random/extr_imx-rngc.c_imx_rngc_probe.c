
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; int name; } ;
struct TYPE_2__ {int read; int init; int name; } ;
struct imx_rngc {int clk; TYPE_1__ rng; int * dev; int rng_op_done; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int devm_clk_get (int *,int *) ;
 struct imx_rngc* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,void*) ;
 int hwrng_register (TYPE_1__*) ;
 int imx_rngc_init ;
 int imx_rngc_irq ;
 int imx_rngc_irq_mask_clear (struct imx_rngc*) ;
 int imx_rngc_read ;
 int imx_rngc_self_test (struct imx_rngc*) ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct imx_rngc*) ;
 scalar_t__ self_test ;

__attribute__((used)) static int imx_rngc_probe(struct platform_device *pdev)
{
 struct imx_rngc *rngc;
 int ret;
 int irq;

 rngc = devm_kzalloc(&pdev->dev, sizeof(*rngc), GFP_KERNEL);
 if (!rngc)
  return -ENOMEM;

 rngc->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(rngc->base))
  return PTR_ERR(rngc->base);

 rngc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(rngc->clk)) {
  dev_err(&pdev->dev, "Can not get rng_clk\n");
  return PTR_ERR(rngc->clk);
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  dev_err(&pdev->dev, "Couldn't get irq %d\n", irq);
  return irq;
 }

 ret = clk_prepare_enable(rngc->clk);
 if (ret)
  return ret;

 ret = devm_request_irq(&pdev->dev,
   irq, imx_rngc_irq, 0, pdev->name, (void *)rngc);
 if (ret) {
  dev_err(rngc->dev, "Can't get interrupt working.\n");
  goto err;
 }

 init_completion(&rngc->rng_op_done);

 rngc->rng.name = pdev->name;
 rngc->rng.init = imx_rngc_init;
 rngc->rng.read = imx_rngc_read;

 rngc->dev = &pdev->dev;
 platform_set_drvdata(pdev, rngc);

 imx_rngc_irq_mask_clear(rngc);

 if (self_test) {
  ret = imx_rngc_self_test(rngc);
  if (ret) {
   dev_err(rngc->dev, "FSL RNGC self test failed.\n");
   goto err;
  }
 }

 ret = hwrng_register(&rngc->rng);
 if (ret) {
  dev_err(&pdev->dev, "FSL RNGC registering failed (%d)\n", ret);
  goto err;
 }

 dev_info(&pdev->dev, "Freescale RNGC registered.\n");
 return 0;

err:
 clk_disable_unprepare(rngc->clk);

 return ret;
}
