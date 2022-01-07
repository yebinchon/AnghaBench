
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_hw_onecell_data {int num; int * hws; } ;


 int clk_hw_unregister_fixed_factor (int ) ;
 int of_clk_del_provider (int ) ;
 struct clk_hw_onecell_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int armada_3700_tbg_clock_remove(struct platform_device *pdev)
{
 int i;
 struct clk_hw_onecell_data *hw_tbg_data = platform_get_drvdata(pdev);

 of_clk_del_provider(pdev->dev.of_node);
 for (i = 0; i < hw_tbg_data->num; i++)
  clk_hw_unregister_fixed_factor(hw_tbg_data->hws[i]);

 return 0;
}
