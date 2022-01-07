
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int of_clk_del_provider (int ) ;

__attribute__((used)) static int axi_clkgen_remove(struct platform_device *pdev)
{
 of_clk_del_provider(pdev->dev.of_node);

 return 0;
}
