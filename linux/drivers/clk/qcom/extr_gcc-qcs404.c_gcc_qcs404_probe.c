
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_alpha_pll_configure (int *,struct regmap*,int *) ;
 int gcc_qcs404_desc ;
 int gpll3_config ;
 int gpll3_out_main ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;

__attribute__((used)) static int gcc_qcs404_probe(struct platform_device *pdev)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &gcc_qcs404_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 clk_alpha_pll_configure(&gpll3_out_main, regmap, &gpll3_config);

 return qcom_cc_really_probe(pdev, &gcc_qcs404_desc, regmap);
}
