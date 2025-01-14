
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll_soc_data {int dummy; } ;
struct tegra_dfll {scalar_t__ mode; struct tegra_dfll_soc_data* soc; int dvco_rst; int i2c_clk; int soc_clk; int ref_clk; int debugfs_dir; } ;
struct platform_device {int dev; } ;


 scalar_t__ DFLL_DISABLED ;
 int EBUSY ;
 struct tegra_dfll_soc_data* ERR_PTR (int ) ;
 int clk_unprepare (int ) ;
 int debugfs_remove_recursive (int ) ;
 int dev_err (int *,char*) ;
 int dfll_unregister_clk (struct tegra_dfll*) ;
 struct tegra_dfll* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int reset_control_assert (int ) ;

struct tegra_dfll_soc_data *tegra_dfll_unregister(struct platform_device *pdev)
{
 struct tegra_dfll *td = platform_get_drvdata(pdev);


 if (td->mode != DFLL_DISABLED) {
  dev_err(&pdev->dev,
   "must disable DFLL before removing driver\n");
  return ERR_PTR(-EBUSY);
 }

 debugfs_remove_recursive(td->debugfs_dir);

 dfll_unregister_clk(td);
 pm_runtime_disable(&pdev->dev);

 clk_unprepare(td->ref_clk);
 clk_unprepare(td->soc_clk);
 clk_unprepare(td->i2c_clk);

 reset_control_assert(td->dvco_rst);

 return td->soc;
}
