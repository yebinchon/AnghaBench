
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_7__ {int nr_resets; int * ops; int of_node; } ;
struct owl_reset {TYPE_3__ rcdev; int regmap; int reset_map; } ;
struct owl_clk_desc {int hw_clks; int regmap; int resets; int num_resets; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*) ;
 struct owl_reset* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_reset_controller_register (TYPE_1__*,TYPE_3__*) ;
 int owl_clk_probe (TYPE_1__*,int ) ;
 int owl_clk_regmap_init (struct platform_device*,struct owl_clk_desc*) ;
 int owl_reset_ops ;
 struct owl_clk_desc s700_clk_desc ;

__attribute__((used)) static int s700_clk_probe(struct platform_device *pdev)
{
 struct owl_clk_desc *desc;
 struct owl_reset *reset;
 int ret;

 desc = &s700_clk_desc;
 owl_clk_regmap_init(pdev, desc);





 reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
 if (!reset)
  return -ENOMEM;

 reset->rcdev.of_node = pdev->dev.of_node;
 reset->rcdev.ops = &owl_reset_ops;
 reset->rcdev.nr_resets = desc->num_resets;
 reset->reset_map = desc->resets;
 reset->regmap = desc->regmap;

 ret = devm_reset_controller_register(&pdev->dev, &reset->rcdev);
 if (ret)
  dev_err(&pdev->dev, "Failed to register reset controller\n");

 return owl_clk_probe(&pdev->dev, desc->hw_clks);
}
