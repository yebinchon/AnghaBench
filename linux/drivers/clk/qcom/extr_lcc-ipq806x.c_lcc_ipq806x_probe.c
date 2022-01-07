
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_pll_configure_sr (int *,struct regmap*,int *,int) ;
 int lcc_ipq806x_desc ;
 int pll4 ;
 int pll4_config ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_read (struct regmap*,int,int *) ;
 int regmap_write (struct regmap*,int,int) ;

__attribute__((used)) static int lcc_ipq806x_probe(struct platform_device *pdev)
{
 u32 val;
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &lcc_ipq806x_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 regmap_read(regmap, 0x0, &val);
 if (!val)
  clk_pll_configure_sr(&pll4, regmap, &pll4_config, 1);

 regmap_write(regmap, 0xc4, 0x1);

 return qcom_cc_really_probe(pdev, &lcc_ipq806x_desc, regmap);
}
