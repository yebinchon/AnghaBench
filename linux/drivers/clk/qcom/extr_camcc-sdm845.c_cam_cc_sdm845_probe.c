
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;
struct alpha_pll_config {int l; int alpha; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int cam_cc_pll0 ;
 int cam_cc_pll1 ;
 int cam_cc_pll2 ;
 int cam_cc_pll3 ;
 int cam_cc_sdm845_desc ;
 int clk_fabia_pll_configure (int *,struct regmap*,struct alpha_pll_config*) ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;

__attribute__((used)) static int cam_cc_sdm845_probe(struct platform_device *pdev)
{
 struct regmap *regmap;
 struct alpha_pll_config cam_cc_pll_config = { };

 regmap = qcom_cc_map(pdev, &cam_cc_sdm845_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 cam_cc_pll_config.l = 0x1f;
 cam_cc_pll_config.alpha = 0x4000;
 clk_fabia_pll_configure(&cam_cc_pll0, regmap, &cam_cc_pll_config);

 cam_cc_pll_config.l = 0x2a;
 cam_cc_pll_config.alpha = 0x1556;
 clk_fabia_pll_configure(&cam_cc_pll1, regmap, &cam_cc_pll_config);

 cam_cc_pll_config.l = 0x32;
 cam_cc_pll_config.alpha = 0x0;
 clk_fabia_pll_configure(&cam_cc_pll2, regmap, &cam_cc_pll_config);

 cam_cc_pll_config.l = 0x14;
 clk_fabia_pll_configure(&cam_cc_pll3, regmap, &cam_cc_pll_config);

 return qcom_cc_really_probe(pdev, &cam_cc_sdm845_desc, regmap);
}
