
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct hisi_crg_dev {int clk_data; int rstc; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* register_clks ) (struct platform_device*) ;} ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct hisi_crg_dev* devm_kmalloc (int *,int,int ) ;
 int hisi_reset_exit (int ) ;
 int hisi_reset_init (struct platform_device*) ;
 TYPE_1__* of_device_get_match_data (int *) ;
 int platform_set_drvdata (struct platform_device*,struct hisi_crg_dev*) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int hi3798cv200_crg_probe(struct platform_device *pdev)
{
 struct hisi_crg_dev *crg;

 crg = devm_kmalloc(&pdev->dev, sizeof(*crg), GFP_KERNEL);
 if (!crg)
  return -ENOMEM;

 crg->funcs = of_device_get_match_data(&pdev->dev);
 if (!crg->funcs)
  return -ENOENT;

 crg->rstc = hisi_reset_init(pdev);
 if (!crg->rstc)
  return -ENOMEM;

 crg->clk_data = crg->funcs->register_clks(pdev);
 if (IS_ERR(crg->clk_data)) {
  hisi_reset_exit(crg->rstc);
  return PTR_ERR(crg->clk_data);
 }

 platform_set_drvdata(pdev, crg);
 return 0;
}
