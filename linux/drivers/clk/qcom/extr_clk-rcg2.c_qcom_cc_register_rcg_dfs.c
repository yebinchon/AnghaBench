
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct clk_rcg_dfs_data {int dummy; } ;


 int clk_rcg2_enable_dfs (struct clk_rcg_dfs_data const*,struct regmap*) ;

int qcom_cc_register_rcg_dfs(struct regmap *regmap,
        const struct clk_rcg_dfs_data *rcgs, size_t len)
{
 int i, ret;

 for (i = 0; i < len; i++) {
  ret = clk_rcg2_enable_dfs(&rcgs[i], regmap);
  if (ret)
   return ret;
 }

 return 0;
}
