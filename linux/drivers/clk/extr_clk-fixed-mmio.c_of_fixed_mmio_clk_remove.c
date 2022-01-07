
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_unregister_fixed_rate (struct clk_hw*) ;
 int of_clk_del_provider (int ) ;
 struct clk_hw* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int of_fixed_mmio_clk_remove(struct platform_device *pdev)
{
 struct clk_hw *clk = platform_get_drvdata(pdev);

 of_clk_del_provider(pdev->dev.of_node);
 clk_hw_unregister_fixed_rate(clk);

 return 0;
}
