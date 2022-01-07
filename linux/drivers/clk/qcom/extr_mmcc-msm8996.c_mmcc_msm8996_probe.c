
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 int BIT (int) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int mmcc_msm8996_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_update_bits (struct regmap*,int,int ,int ) ;

__attribute__((used)) static int mmcc_msm8996_probe(struct platform_device *pdev)
{
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &mmcc_msm8996_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 regmap_update_bits(regmap, 0x50d8, BIT(31), 0);

 regmap_update_bits(regmap, 0x5054, BIT(15), 0);

 return qcom_cc_really_probe(pdev, &mmcc_msm8996_desc, regmap);
}
