
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hi6220_stub_clk {int dfs_map; } ;


 int ACPU_DFS_FLAG ;
 int ACPU_DFS_FREQ_LMT ;
 int ACPU_DFS_FREQ_MAX ;
 unsigned int ACPU_DFS_LOCK_FLAG ;
 unsigned int UINT_MAX ;
 scalar_t__ WARN_ON (int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int hi6220_acpu_round_freq(struct hi6220_stub_clk *stub_clk,
      unsigned int freq)
{
 unsigned int limit_flag, limit_freq = UINT_MAX;
 unsigned int max_freq;


 regmap_read(stub_clk->dfs_map, ACPU_DFS_FLAG, &limit_flag);
 if (limit_flag == ACPU_DFS_LOCK_FLAG)
  regmap_read(stub_clk->dfs_map, ACPU_DFS_FREQ_LMT, &limit_freq);


 regmap_read(stub_clk->dfs_map, ACPU_DFS_FREQ_MAX, &max_freq);


 max_freq = min(max_freq, limit_freq);

 if (WARN_ON(freq > max_freq))
  freq = max_freq;

 return freq;
}
