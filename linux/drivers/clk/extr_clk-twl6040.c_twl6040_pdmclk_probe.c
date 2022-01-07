
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * init; } ;
struct twl6040_pdmclk {TYPE_2__ pdmclk_hw; struct twl6040* twl6040; TYPE_1__* dev; } ;
struct twl6040 {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct twl6040* dev_get_drvdata (int ) ;
 int devm_clk_hw_register (TYPE_1__*,TYPE_2__*) ;
 struct twl6040_pdmclk* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_of_clk_add_hw_provider (TYPE_1__*,int ,TYPE_2__*) ;
 int of_clk_hw_simple_get ;
 int platform_set_drvdata (struct platform_device*,struct twl6040_pdmclk*) ;
 int twl6040_pdmclk_init ;

__attribute__((used)) static int twl6040_pdmclk_probe(struct platform_device *pdev)
{
 struct twl6040 *twl6040 = dev_get_drvdata(pdev->dev.parent);
 struct twl6040_pdmclk *clkdata;
 int ret;

 clkdata = devm_kzalloc(&pdev->dev, sizeof(*clkdata), GFP_KERNEL);
 if (!clkdata)
  return -ENOMEM;

 clkdata->dev = &pdev->dev;
 clkdata->twl6040 = twl6040;

 clkdata->pdmclk_hw.init = &twl6040_pdmclk_init;
 ret = devm_clk_hw_register(&pdev->dev, &clkdata->pdmclk_hw);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, clkdata);

 return devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_simple_get,
        &clkdata->pdmclk_hw);
}
