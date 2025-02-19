
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_10__ {int * init; } ;
struct palmas_clock_info {TYPE_3__ hw; TYPE_1__* clk_desc; struct palmas* palmas; TYPE_2__* dev; } ;
struct TYPE_8__ {int clk_name; } ;
struct palmas_clks_of_match_data {TYPE_1__ desc; int init; } ;
struct palmas {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int,...) ;
 struct palmas* dev_get_drvdata (int ) ;
 int devm_clk_hw_register (TYPE_2__*,TYPE_3__*) ;
 struct palmas_clock_info* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_clk_add_hw_provider (struct device_node*,int ,TYPE_3__*) ;
 int of_clk_hw_simple_get ;
 struct palmas_clks_of_match_data* of_device_get_match_data (TYPE_2__*) ;
 int palmas_clks_get_clk_data (struct platform_device*,struct palmas_clock_info*) ;
 int palmas_clks_init_configure (struct palmas_clock_info*) ;
 int platform_set_drvdata (struct platform_device*,struct palmas_clock_info*) ;

__attribute__((used)) static int palmas_clks_probe(struct platform_device *pdev)
{
 struct palmas *palmas = dev_get_drvdata(pdev->dev.parent);
 struct device_node *node = pdev->dev.of_node;
 const struct palmas_clks_of_match_data *match_data;
 struct palmas_clock_info *cinfo;
 int ret;

 match_data = of_device_get_match_data(&pdev->dev);
 if (!match_data)
  return 1;

 cinfo = devm_kzalloc(&pdev->dev, sizeof(*cinfo), GFP_KERNEL);
 if (!cinfo)
  return -ENOMEM;

 palmas_clks_get_clk_data(pdev, cinfo);
 platform_set_drvdata(pdev, cinfo);

 cinfo->dev = &pdev->dev;
 cinfo->palmas = palmas;

 cinfo->clk_desc = &match_data->desc;
 cinfo->hw.init = &match_data->init;
 ret = devm_clk_hw_register(&pdev->dev, &cinfo->hw);
 if (ret) {
  dev_err(&pdev->dev, "Fail to register clock %s, %d\n",
   match_data->desc.clk_name, ret);
  return ret;
 }

 ret = palmas_clks_init_configure(cinfo);
 if (ret < 0) {
  dev_err(&pdev->dev, "Clock config failed, %d\n", ret);
  return ret;
 }

 ret = of_clk_add_hw_provider(node, of_clk_hw_simple_get, &cinfo->hw);
 if (ret < 0)
  dev_err(&pdev->dev, "Fail to add clock driver, %d\n", ret);
 return ret;
}
