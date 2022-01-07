
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int eemi_ops ;
 int zynqmp_clk_setup (int ) ;
 int zynqmp_pm_get_eemi_ops () ;

__attribute__((used)) static int zynqmp_clock_probe(struct platform_device *pdev)
{
 int ret;
 struct device *dev = &pdev->dev;

 eemi_ops = zynqmp_pm_get_eemi_ops();
 if (IS_ERR(eemi_ops))
  return PTR_ERR(eemi_ops);

 ret = zynqmp_clk_setup(dev->of_node);

 return ret;
}
