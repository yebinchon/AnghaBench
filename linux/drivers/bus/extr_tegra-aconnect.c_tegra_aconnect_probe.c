
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct tegra_aconnect {void* apb2ape_clk; void* ape_clk; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct tegra_aconnect*) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 struct tegra_aconnect* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_platform_populate (int ,int *,int *,TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;

__attribute__((used)) static int tegra_aconnect_probe(struct platform_device *pdev)
{
 struct tegra_aconnect *aconnect;

 if (!pdev->dev.of_node)
  return -EINVAL;

 aconnect = devm_kzalloc(&pdev->dev, sizeof(struct tegra_aconnect),
    GFP_KERNEL);
 if (!aconnect)
  return -ENOMEM;

 aconnect->ape_clk = devm_clk_get(&pdev->dev, "ape");
 if (IS_ERR(aconnect->ape_clk)) {
  dev_err(&pdev->dev, "Can't retrieve ape clock\n");
  return PTR_ERR(aconnect->ape_clk);
 }

 aconnect->apb2ape_clk = devm_clk_get(&pdev->dev, "apb2ape");
 if (IS_ERR(aconnect->apb2ape_clk)) {
  dev_err(&pdev->dev, "Can't retrieve apb2ape clock\n");
  return PTR_ERR(aconnect->apb2ape_clk);
 }

 dev_set_drvdata(&pdev->dev, aconnect);
 pm_runtime_enable(&pdev->dev);

 of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);

 dev_info(&pdev->dev, "Tegra ACONNECT bus registered\n");

 return 0;
}
