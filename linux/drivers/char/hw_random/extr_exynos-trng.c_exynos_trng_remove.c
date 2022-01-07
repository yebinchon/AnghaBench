
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct exynos_trng_dev {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct exynos_trng_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int exynos_trng_remove(struct platform_device *pdev)
{
 struct exynos_trng_dev *trng = platform_get_drvdata(pdev);

 clk_disable_unprepare(trng->clk);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
