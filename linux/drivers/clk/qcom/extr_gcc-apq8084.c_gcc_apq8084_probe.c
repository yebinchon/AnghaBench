
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int gcc_apq8084_desc ;
 int qcom_cc_probe (struct platform_device*,int *) ;
 int qcom_cc_register_board_clk (struct device*,char*,char*,int) ;
 int qcom_cc_register_sleep_clk (struct device*) ;

__attribute__((used)) static int gcc_apq8084_probe(struct platform_device *pdev)
{
 int ret;
 struct device *dev = &pdev->dev;

 ret = qcom_cc_register_board_clk(dev, "xo_board", "xo", 19200000);
 if (ret)
  return ret;

 ret = qcom_cc_register_sleep_clk(dev);
 if (ret)
  return ret;

 return qcom_cc_probe(pdev, &gcc_apq8084_desc);
}
