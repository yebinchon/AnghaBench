
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int epll ;
 int exynos_audss_clk_teardown () ;
 int of_clk_del_provider (int ) ;
 int pm_runtime_disable (TYPE_1__*) ;

__attribute__((used)) static int exynos_audss_clk_remove(struct platform_device *pdev)
{
 of_clk_del_provider(pdev->dev.of_node);

 exynos_audss_clk_teardown();
 pm_runtime_disable(&pdev->dev);

 if (!IS_ERR(epll))
  clk_disable_unprepare(epll);

 return 0;
}
