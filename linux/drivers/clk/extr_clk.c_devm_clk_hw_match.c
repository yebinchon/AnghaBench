
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef void clk_hw ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_clk_hw_match(struct device *dev, void *res, void *data)
{
 struct clk_hw *hw = res;

 if (WARN_ON(!hw))
  return 0;
 return hw == data;
}
