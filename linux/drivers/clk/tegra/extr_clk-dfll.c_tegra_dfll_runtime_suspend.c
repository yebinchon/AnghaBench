
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int i2c_clk; int soc_clk; int ref_clk; } ;
struct device {int dummy; } ;


 int clk_disable (int ) ;
 struct tegra_dfll* dev_get_drvdata (struct device*) ;

int tegra_dfll_runtime_suspend(struct device *dev)
{
 struct tegra_dfll *td = dev_get_drvdata(dev);

 clk_disable(td->ref_clk);
 clk_disable(td->soc_clk);
 clk_disable(td->i2c_clk);

 return 0;
}
