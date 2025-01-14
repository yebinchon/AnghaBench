
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hi655x_pmic {int dummy; } ;
struct TYPE_7__ {struct clk_init_data* init; } ;
struct hi655x_clk {TYPE_2__ clk_hw; struct hi655x_pmic* hi655x; } ;
struct device {int of_node; } ;
struct clk_init_data {char const* name; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hi655x_pmic* dev_get_drvdata (struct device*) ;
 int devm_clk_hw_register (TYPE_1__*,TYPE_2__*) ;
 struct hi655x_clk* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_of_clk_add_hw_provider (TYPE_1__*,int ,TYPE_2__*) ;
 int hi655x_clk_ops ;
 int of_clk_hw_simple_get ;
 int of_property_read_string_index (int ,char*,int ,char const**) ;
 int platform_set_drvdata (struct platform_device*,struct hi655x_clk*) ;

__attribute__((used)) static int hi655x_clk_probe(struct platform_device *pdev)
{
 struct device *parent = pdev->dev.parent;
 struct hi655x_pmic *hi655x = dev_get_drvdata(parent);
 struct hi655x_clk *hi655x_clk;
 const char *clk_name = "hi655x-clk";
 struct clk_init_data init = {
  .name = clk_name,
  .ops = &hi655x_clk_ops
 };
 int ret;

 hi655x_clk = devm_kzalloc(&pdev->dev, sizeof(*hi655x_clk), GFP_KERNEL);
 if (!hi655x_clk)
  return -ENOMEM;

 of_property_read_string_index(parent->of_node, "clock-output-names",
          0, &clk_name);

 hi655x_clk->clk_hw.init = &init;
 hi655x_clk->hi655x = hi655x;

 platform_set_drvdata(pdev, hi655x_clk);

 ret = devm_clk_hw_register(&pdev->dev, &hi655x_clk->clk_hw);
 if (ret)
  return ret;

 return devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_simple_get,
        &hi655x_clk->clk_hw);
}
