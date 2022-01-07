
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 int BIT (int) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int gcc_msm8998_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_update_bits (struct regmap*,int,int ,int ) ;

__attribute__((used)) static int gcc_msm8998_probe(struct platform_device *pdev)
{
 struct regmap *regmap;
 int ret;

 regmap = qcom_cc_map(pdev, &gcc_msm8998_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);





 ret = regmap_update_bits(regmap, 0x52008, BIT(21), BIT(21));
 if (ret)
  return ret;

 return qcom_cc_really_probe(pdev, &gcc_msm8998_desc, regmap);
}
