
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int gcc_sm8150_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int gcc_sm8150_probe(struct platform_device *pdev)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &gcc_sm8150_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 regmap_update_bits(regmap, 0x4d110, 0x3, 0x3);
 regmap_update_bits(regmap, 0x71028, 0x3, 0x3);

 return qcom_cc_really_probe(pdev, &gcc_sm8150_desc, regmap);
}
