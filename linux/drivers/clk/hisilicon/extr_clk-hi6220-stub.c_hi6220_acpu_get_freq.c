
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hi6220_stub_clk {int dfs_map; } ;


 int ACPU_DFS_CUR_FREQ ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int hi6220_acpu_get_freq(struct hi6220_stub_clk *stub_clk)
{
 unsigned int freq;

 regmap_read(stub_clk->dfs_map, ACPU_DFS_CUR_FREQ, &freq);
 return freq;
}
