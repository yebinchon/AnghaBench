
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_pll_configure_sr_hpm_lp (int *,struct regmap*,int *,int) ;
 struct regmap* dev_get_regmap (int *,int *) ;
 int mmcc_apq8084_desc ;
 int mmpll1 ;
 int mmpll1_config ;
 int mmpll3 ;
 int mmpll3_config ;
 int qcom_cc_probe (struct platform_device*,int *) ;

__attribute__((used)) static int mmcc_apq8084_probe(struct platform_device *pdev)
{
 int ret;
 struct regmap *regmap;

 ret = qcom_cc_probe(pdev, &mmcc_apq8084_desc);
 if (ret)
  return ret;

 regmap = dev_get_regmap(&pdev->dev, ((void*)0));
 clk_pll_configure_sr_hpm_lp(&mmpll1, regmap, &mmpll1_config, 1);
 clk_pll_configure_sr_hpm_lp(&mmpll3, regmap, &mmpll3_config, 0);

 return 0;
}
