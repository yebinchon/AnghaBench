
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;

__attribute__((used)) static void devm_clk_hw_release(struct device *dev, void *res)
{
 clk_hw_unregister(*(struct clk_hw **)res);
}
