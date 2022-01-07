
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int hw; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_register (struct device*,int *) ;
 int gcc_msm8994_desc ;
 int qcom_cc_probe (struct platform_device*,int *) ;
 TYPE_1__ xo ;

__attribute__((used)) static int gcc_msm8994_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct clk *clk;

 clk = devm_clk_register(dev, &xo.hw);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 return qcom_cc_probe(pdev, &gcc_msm8994_desc);
}
