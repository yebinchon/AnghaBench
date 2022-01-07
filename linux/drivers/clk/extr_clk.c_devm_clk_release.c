
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int clk_unregister (struct clk*) ;

__attribute__((used)) static void devm_clk_release(struct device *dev, void *res)
{
 clk_unregister(*(struct clk **)res);
}
