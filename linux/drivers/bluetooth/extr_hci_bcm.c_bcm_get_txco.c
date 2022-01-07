
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int EPROBE_DEFER ;
 int IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static struct clk *bcm_get_txco(struct device *dev)
{
 struct clk *clk;


 clk = devm_clk_get(dev, "txco");
 if (!IS_ERR(clk) || PTR_ERR(clk) == -EPROBE_DEFER)
  return clk;


 clk = devm_clk_get(dev, "extclk");
 if (!IS_ERR(clk) || PTR_ERR(clk) == -EPROBE_DEFER)
  return clk;


 return devm_clk_get(dev, ((void*)0));
}
