
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;
struct alpha_pll_config {int l; int alpha; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_fabia_pll_configure (int *,struct regmap*,struct alpha_pll_config*) ;
 int disp_cc_pll0 ;
 int disp_cc_sdm845_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int disp_cc_sdm845_probe(struct platform_device *pdev)
{
 struct regmap *regmap;
 struct alpha_pll_config disp_cc_pll0_config = {};

 regmap = qcom_cc_map(pdev, &disp_cc_sdm845_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 disp_cc_pll0_config.l = 0x2c;
 disp_cc_pll0_config.alpha = 0xcaaa;

 clk_fabia_pll_configure(&disp_cc_pll0, regmap, &disp_cc_pll0_config);


 regmap_update_bits(regmap, 0x8000, 0x7f0, 0x7f0);

 return qcom_cc_really_probe(pdev, &disp_cc_sdm845_desc, regmap);
}
