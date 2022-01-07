
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;


 int clkdev_drop (struct clk_lookup*) ;

__attribute__((used)) static void devm_clkdev_release(struct device *dev, void *res)
{
 clkdev_drop(*(struct clk_lookup **)res);
}
