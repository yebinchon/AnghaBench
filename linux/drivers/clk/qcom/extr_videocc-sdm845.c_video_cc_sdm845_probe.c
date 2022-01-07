
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_fabia_pll_configure (int *,struct regmap*,int *) ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int video_cc_sdm845_desc ;
 int video_pll0 ;
 int video_pll0_config ;

__attribute__((used)) static int video_cc_sdm845_probe(struct platform_device *pdev)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &video_cc_sdm845_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 clk_fabia_pll_configure(&video_pll0, regmap, &video_pll0_config);

 return qcom_cc_really_probe(pdev, &video_cc_sdm845_desc, regmap);
}
