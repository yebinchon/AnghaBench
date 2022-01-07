
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll_soc_data {int max_freq; int cvb; int dev; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct tegra_dfll_soc_data*) ;
 int PTR_ERR (struct tegra_dfll_soc_data*) ;
 int dev_err (int *,char*,int) ;
 int tegra_cvb_remove_opp_table (int ,int ,int ) ;
 struct tegra_dfll_soc_data* tegra_dfll_unregister (struct platform_device*) ;

__attribute__((used)) static int tegra124_dfll_fcpu_remove(struct platform_device *pdev)
{
 struct tegra_dfll_soc_data *soc;

 soc = tegra_dfll_unregister(pdev);
 if (IS_ERR(soc)) {
  dev_err(&pdev->dev, "failed to unregister DFLL: %ld\n",
   PTR_ERR(soc));
  return PTR_ERR(soc);
 }

 tegra_cvb_remove_opp_table(soc->dev, soc->cvb, soc->max_freq);

 return 0;
}
