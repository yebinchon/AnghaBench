
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hi3519_crg_data {int clk_data; int rstc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct hi3519_crg_data* devm_kmalloc (int *,int,int ) ;
 int hi3519_clk_register (struct platform_device*) ;
 int hisi_reset_exit (int ) ;
 int hisi_reset_init (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct hi3519_crg_data*) ;

__attribute__((used)) static int hi3519_clk_probe(struct platform_device *pdev)
{
 struct hi3519_crg_data *crg;

 crg = devm_kmalloc(&pdev->dev, sizeof(*crg), GFP_KERNEL);
 if (!crg)
  return -ENOMEM;

 crg->rstc = hisi_reset_init(pdev);
 if (!crg->rstc)
  return -ENOMEM;

 crg->clk_data = hi3519_clk_register(pdev);
 if (IS_ERR(crg->clk_data)) {
  hisi_reset_exit(crg->rstc);
  return PTR_ERR(crg->clk_data);
 }

 platform_set_drvdata(pdev, crg);
 return 0;
}
