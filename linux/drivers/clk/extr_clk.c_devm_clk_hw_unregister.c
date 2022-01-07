
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_clk_hw_match ;
 int devm_clk_hw_release ;
 int devres_release (struct device*,int ,int ,struct clk_hw*) ;

void devm_clk_hw_unregister(struct device *dev, struct clk_hw *hw)
{
 WARN_ON(devres_release(dev, devm_clk_hw_release, devm_clk_hw_match,
    hw));
}
