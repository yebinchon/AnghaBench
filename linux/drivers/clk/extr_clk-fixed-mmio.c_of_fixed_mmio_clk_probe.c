
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ IS_ERR (struct clk_hw*) ;
 int PTR_ERR (struct clk_hw*) ;
 struct clk_hw* fixed_mmio_clk_setup (int ) ;
 int platform_set_drvdata (struct platform_device*,struct clk_hw*) ;

__attribute__((used)) static int of_fixed_mmio_clk_probe(struct platform_device *pdev)
{
 struct clk_hw *clk;

 clk = fixed_mmio_clk_setup(pdev->dev.of_node);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 platform_set_drvdata(pdev, clk);

 return 0;
}
