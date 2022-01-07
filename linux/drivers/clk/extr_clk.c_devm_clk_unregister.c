
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_clk_match ;
 int devm_clk_release ;
 int devres_release (struct device*,int ,int ,struct clk*) ;

void devm_clk_unregister(struct device *dev, struct clk *clk)
{
 WARN_ON(devres_release(dev, devm_clk_release, devm_clk_match, clk));
}
