
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rng_dev {int clk; } ;
struct platform_device {int dev; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int *,char*,int) ;
 int device_init_wakeup (int *,int ) ;
 struct xgene_rng_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xgene_rng_remove(struct platform_device *pdev)
{
 struct xgene_rng_dev *ctx = platform_get_drvdata(pdev);
 int rc;

 rc = device_init_wakeup(&pdev->dev, 0);
 if (rc)
  dev_err(&pdev->dev, "RNG init wakeup failed error %d\n", rc);
 if (!IS_ERR(ctx->clk))
  clk_disable_unprepare(ctx->clk);

 return rc;
}
