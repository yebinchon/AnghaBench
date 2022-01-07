
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct omap_rng_dev {int clk_reg; int clk; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* cleanup ) (struct omap_rng_dev*) ;} ;


 int clk_disable_unprepare (int ) ;
 struct omap_rng_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int stub1 (struct omap_rng_dev*) ;

__attribute__((used)) static int omap_rng_remove(struct platform_device *pdev)
{
 struct omap_rng_dev *priv = platform_get_drvdata(pdev);


 priv->pdata->cleanup(priv);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 clk_disable_unprepare(priv->clk);
 clk_disable_unprepare(priv->clk_reg);

 return 0;
}
