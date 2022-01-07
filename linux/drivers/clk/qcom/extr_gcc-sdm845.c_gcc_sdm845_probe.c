
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int gcc_dfs_clocks ;
 int gcc_sdm845_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int qcom_cc_register_rcg_dfs (struct regmap*,int ,int ) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int gcc_sdm845_probe(struct platform_device *pdev)
{
 struct regmap *regmap;
 int ret;

 regmap = qcom_cc_map(pdev, &gcc_sdm845_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 regmap_update_bits(regmap, 0x09ffc, 0x3, 0x3);
 regmap_update_bits(regmap, 0x71028, 0x3, 0x3);

 ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
     ARRAY_SIZE(gcc_dfs_clocks));
 if (ret)
  return ret;

 return qcom_cc_really_probe(pdev, &gcc_sdm845_desc, regmap);
}
