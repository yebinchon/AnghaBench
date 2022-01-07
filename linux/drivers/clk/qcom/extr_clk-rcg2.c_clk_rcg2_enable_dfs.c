
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct clk_rcg_dfs_data {struct clk_init_data* init; struct clk_rcg2* rcg; } ;
struct clk_rcg2 {int * freq_tbl; scalar_t__ cmd_rcgr; } ;
struct clk_init_data {int * ops; int flags; } ;


 int CLK_GET_RATE_NOCACHE ;
 int EINVAL ;
 scalar_t__ SE_CMD_DFSR_OFFSET ;
 int SE_CMD_DFS_EN ;
 int clk_rcg2_dfs_ops ;
 int regmap_read (struct regmap*,scalar_t__,int*) ;

__attribute__((used)) static int clk_rcg2_enable_dfs(const struct clk_rcg_dfs_data *data,
          struct regmap *regmap)
{
 struct clk_rcg2 *rcg = data->rcg;
 struct clk_init_data *init = data->init;
 u32 val;
 int ret;

 ret = regmap_read(regmap, rcg->cmd_rcgr + SE_CMD_DFSR_OFFSET, &val);
 if (ret)
  return -EINVAL;

 if (!(val & SE_CMD_DFS_EN))
  return 0;





 init->flags |= CLK_GET_RATE_NOCACHE;
 init->ops = &clk_rcg2_dfs_ops;

 rcg->freq_tbl = ((void*)0);

 return 0;
}
