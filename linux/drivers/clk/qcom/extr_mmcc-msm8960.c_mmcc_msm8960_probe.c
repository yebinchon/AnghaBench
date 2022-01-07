
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int data; } ;
struct TYPE_5__ {int * init; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
struct TYPE_8__ {TYPE_3__* s; TYPE_2__ clkr; int freq_tbl; } ;
struct TYPE_7__ {void* parent_map; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_pll_configure_sr (int *,struct regmap*,int *,int) ;
 int clk_tbl_gfx3d_8064 ;
 int gfx3d_8064_init ;
 TYPE_4__ gfx3d_src ;
 int mmcc_msm8960_match_table ;
 void* mmcc_pxo_pll8_pll2_pll15_map ;
 int of_device_is_compatible (int ,char*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int pll15 ;
 int pll15_config ;
 struct regmap* qcom_cc_map (struct platform_device*,int ) ;
 int qcom_cc_really_probe (struct platform_device*,int ,struct regmap*) ;

__attribute__((used)) static int mmcc_msm8960_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct regmap *regmap;
 bool is_8064;
 struct device *dev = &pdev->dev;

 match = of_match_device(mmcc_msm8960_match_table, dev);
 if (!match)
  return -EINVAL;

 is_8064 = of_device_is_compatible(dev->of_node, "qcom,mmcc-apq8064");
 if (is_8064) {
  gfx3d_src.freq_tbl = clk_tbl_gfx3d_8064;
  gfx3d_src.clkr.hw.init = &gfx3d_8064_init;
  gfx3d_src.s[0].parent_map = mmcc_pxo_pll8_pll2_pll15_map;
  gfx3d_src.s[1].parent_map = mmcc_pxo_pll8_pll2_pll15_map;
 }

 regmap = qcom_cc_map(pdev, match->data);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 clk_pll_configure_sr(&pll15, regmap, &pll15_config, 0);

 return qcom_cc_really_probe(pdev, match->data, regmap);
}
