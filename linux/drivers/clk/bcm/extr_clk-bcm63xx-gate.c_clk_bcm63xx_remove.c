
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int num; int * hws; } ;
struct clk_bcm63xx_hw {TYPE_2__ data; } ;


 int IS_ERR (int ) ;
 int clk_hw_unregister_gate (int ) ;
 int of_clk_del_provider (int ) ;
 struct clk_bcm63xx_hw* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int clk_bcm63xx_remove(struct platform_device *pdev)
{
 struct clk_bcm63xx_hw *hw = platform_get_drvdata(pdev);
 int i;

 of_clk_del_provider(pdev->dev.of_node);

 for (i = 0; i < hw->data.num; i++) {
  if (!IS_ERR(hw->data.hws[i]))
   clk_hw_unregister_gate(hw->data.hws[i]);
 }

 return 0;
}
