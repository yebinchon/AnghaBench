
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int ref_clk; int soc_clk; int i2c_clk; } ;
struct device {int dummy; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra_dfll* dev_get_drvdata (struct device*) ;

int tegra_dfll_runtime_resume(struct device *dev)
{
 struct tegra_dfll *td = dev_get_drvdata(dev);
 int ret;

 ret = clk_enable(td->ref_clk);
 if (ret) {
  dev_err(dev, "could not enable ref clock: %d\n", ret);
  return ret;
 }

 ret = clk_enable(td->soc_clk);
 if (ret) {
  dev_err(dev, "could not enable register clock: %d\n", ret);
  clk_disable(td->ref_clk);
  return ret;
 }

 ret = clk_enable(td->i2c_clk);
 if (ret) {
  dev_err(dev, "could not enable i2c clock: %d\n", ret);
  clk_disable(td->soc_clk);
  clk_disable(td->ref_clk);
  return ret;
 }

 return 0;
}
