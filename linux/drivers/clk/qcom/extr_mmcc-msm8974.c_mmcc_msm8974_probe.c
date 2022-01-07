
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_pll_configure_sr_hpm_lp (int *,struct regmap*,int *,int) ;
 int mmcc_msm8974_desc ;
 int mmpll1 ;
 int mmpll1_config ;
 int mmpll3 ;
 int mmpll3_config ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;

__attribute__((used)) static int mmcc_msm8974_probe(struct platform_device *pdev)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &mmcc_msm8974_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 clk_pll_configure_sr_hpm_lp(&mmpll1, regmap, &mmpll1_config, 1);
 clk_pll_configure_sr_hpm_lp(&mmpll3, regmap, &mmpll3_config, 0);

 return qcom_cc_really_probe(pdev, &mmcc_msm8974_desc, regmap);
}
