
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int gcc_msm8660_desc ;
 int qcom_cc_probe (struct platform_device*,int *) ;
 int qcom_cc_register_board_clk (struct device*,char*,char*,int) ;

__attribute__((used)) static int gcc_msm8660_probe(struct platform_device *pdev)
{
 int ret;
 struct device *dev = &pdev->dev;

 ret = qcom_cc_register_board_clk(dev, "cxo_board", "cxo", 19200000);
 if (ret)
  return ret;

 ret = qcom_cc_register_board_clk(dev, "pxo_board", "pxo", 27000000);
 if (ret)
  return ret;

 return qcom_cc_probe(pdev, &gcc_msm8660_desc);
}
