
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_aconnect {int ape_clk; int apb2ape_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra_aconnect* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int tegra_aconnect_runtime_resume(struct device *dev)
{
 struct tegra_aconnect *aconnect = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(aconnect->ape_clk);
 if (ret) {
  dev_err(dev, "ape clk_enable failed: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(aconnect->apb2ape_clk);
 if (ret) {
  clk_disable_unprepare(aconnect->ape_clk);
  dev_err(dev, "apb2ape clk_enable failed: %d\n", ret);
  return ret;
 }

 return 0;
}
