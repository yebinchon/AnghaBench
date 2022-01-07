
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rcg2 {int freq_tbl; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_get_name (struct clk_hw*) ;
 int clk_rcg2_determine_rate (struct clk_hw*,struct clk_rate_request*) ;
 int clk_rcg2_dfs_populate_freq_table (struct clk_rcg2*) ;
 int pr_err (char*,int ) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg2_dfs_determine_rate(struct clk_hw *hw,
       struct clk_rate_request *req)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 int ret;

 if (!rcg->freq_tbl) {
  ret = clk_rcg2_dfs_populate_freq_table(rcg);
  if (ret) {
   pr_err("Failed to update DFS tables for %s\n",
     clk_hw_get_name(hw));
   return ret;
  }
 }

 return clk_rcg2_determine_rate(hw, req);
}
