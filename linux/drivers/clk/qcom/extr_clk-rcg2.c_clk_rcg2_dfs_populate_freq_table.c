
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct freq_tbl {int dummy; } ;
struct TYPE_2__ {int hw; } ;
struct clk_rcg2 {TYPE_1__ clkr; struct freq_tbl* freq_tbl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_PERF_LEVEL ;
 int clk_rcg2_dfs_populate_freq (int *,int,struct freq_tbl*) ;
 struct freq_tbl* kcalloc (int,int,int ) ;

__attribute__((used)) static int clk_rcg2_dfs_populate_freq_table(struct clk_rcg2 *rcg)
{
 struct freq_tbl *freq_tbl;
 int i;


 freq_tbl = kcalloc(MAX_PERF_LEVEL + 1, sizeof(*freq_tbl), GFP_KERNEL);
 if (!freq_tbl)
  return -ENOMEM;
 rcg->freq_tbl = freq_tbl;

 for (i = 0; i < MAX_PERF_LEVEL; i++)
  clk_rcg2_dfs_populate_freq(&rcg->clkr.hw, i, freq_tbl + i);

 return 0;
}
