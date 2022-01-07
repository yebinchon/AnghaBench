
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int * data; } ;
struct TYPE_4__ {int * d; } ;
struct TYPE_3__ {int * d; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int gcc_apq8064_desc ;
 int gcc_msm8960_match_table ;
 TYPE_2__ hfpll1 ;
 int hfpll1_8064_data ;
 TYPE_1__ hfpll_l2 ;
 int hfpll_l2_8064_data ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 struct platform_device* platform_device_register_data (struct device*,char*,int,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct platform_device*) ;
 int qcom_cc_probe (struct platform_device*,int *) ;
 int qcom_cc_register_board_clk (struct device*,char*,char*,int) ;

__attribute__((used)) static int gcc_msm8960_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct of_device_id *match;
 struct platform_device *tsens;
 int ret;

 match = of_match_device(gcc_msm8960_match_table, &pdev->dev);
 if (!match)
  return -EINVAL;

 ret = qcom_cc_register_board_clk(dev, "cxo_board", "cxo", 19200000);
 if (ret)
  return ret;

 ret = qcom_cc_register_board_clk(dev, "pxo_board", "pxo", 27000000);
 if (ret)
  return ret;

 ret = qcom_cc_probe(pdev, match->data);
 if (ret)
  return ret;

 if (match->data == &gcc_apq8064_desc) {
  hfpll1.d = &hfpll1_8064_data;
  hfpll_l2.d = &hfpll_l2_8064_data;
 }

 tsens = platform_device_register_data(&pdev->dev, "qcom-tsens", -1,
           ((void*)0), 0);
 if (IS_ERR(tsens))
  return PTR_ERR(tsens);

 platform_set_drvdata(pdev, tsens);

 return 0;
}
