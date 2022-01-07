
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lpss_clk_data {char* name; struct clk* clk; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_register_fixed_rate (int *,char*,int *,int ,int) ;
 struct lpss_clk_data* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpss_clk_data*) ;

__attribute__((used)) static int lpt_clk_probe(struct platform_device *pdev)
{
 struct lpss_clk_data *drvdata;
 struct clk *clk;

 drvdata = devm_kzalloc(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;


 drvdata->name = "lpss_clk";
 clk = clk_register_fixed_rate(&pdev->dev, drvdata->name, ((void*)0),
          0, 100000000);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 drvdata->clk = clk;
 platform_set_drvdata(pdev, drvdata);
 return 0;
}
