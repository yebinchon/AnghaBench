
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int gcc_mdm9615_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;

__attribute__((used)) static int gcc_mdm9615_probe(struct platform_device *pdev)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &gcc_mdm9615_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return qcom_cc_really_probe(pdev, &gcc_mdm9615_desc, regmap);
}
