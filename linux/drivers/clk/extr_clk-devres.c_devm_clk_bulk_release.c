
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_bulk_devres {int clks; int num_clks; } ;


 int clk_bulk_put (int ,int ) ;

__attribute__((used)) static void devm_clk_bulk_release(struct device *dev, void *res)
{
 struct clk_bulk_devres *devres = res;

 clk_bulk_put(devres->num_clks, devres->clks);
}
