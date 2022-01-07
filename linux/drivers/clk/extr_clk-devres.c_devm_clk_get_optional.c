
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 struct clk* devm_clk_get (struct device*,char const*) ;

struct clk *devm_clk_get_optional(struct device *dev, const char *id)
{
 struct clk *clk = devm_clk_get(dev, id);

 if (clk == ERR_PTR(-ENOENT))
  return ((void*)0);

 return clk;
}
