
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_aconnect {int apb2ape_clk; int ape_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra_aconnect* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int tegra_aconnect_runtime_suspend(struct device *dev)
{
 struct tegra_aconnect *aconnect = dev_get_drvdata(dev);

 clk_disable_unprepare(aconnect->ape_clk);
 clk_disable_unprepare(aconnect->apb2ape_clk);

 return 0;
}
