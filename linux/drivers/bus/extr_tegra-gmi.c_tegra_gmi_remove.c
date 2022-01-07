
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gmi {int dev; } ;
struct platform_device {int dummy; } ;


 int of_platform_depopulate (int ) ;
 struct tegra_gmi* platform_get_drvdata (struct platform_device*) ;
 int tegra_gmi_disable (struct tegra_gmi*) ;

__attribute__((used)) static int tegra_gmi_remove(struct platform_device *pdev)
{
 struct tegra_gmi *gmi = platform_get_drvdata(pdev);

 of_platform_depopulate(gmi->dev);
 tegra_gmi_disable(gmi);

 return 0;
}
