
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef void clk_lookup ;



__attribute__((used)) static int devm_clk_match_clkdev(struct device *dev, void *res, void *data)
{
 struct clk_lookup **l = res;

 return *l == data;
}
