
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct qcom_cc_desc {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* qcom_cc_map (struct platform_device*,struct qcom_cc_desc const*) ;
 int qcom_cc_really_probe (struct platform_device*,struct qcom_cc_desc const*,struct regmap*) ;

int qcom_cc_probe(struct platform_device *pdev, const struct qcom_cc_desc *desc)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return qcom_cc_really_probe(pdev, desc, regmap);
}
