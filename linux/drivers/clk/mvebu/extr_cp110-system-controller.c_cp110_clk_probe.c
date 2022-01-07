
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int parent; } ;


 int cp110_syscon_common_probe (struct platform_device*,int ) ;

__attribute__((used)) static int cp110_clk_probe(struct platform_device *pdev)
{
 return cp110_syscon_common_probe(pdev, pdev->dev.of_node->parent);
}
