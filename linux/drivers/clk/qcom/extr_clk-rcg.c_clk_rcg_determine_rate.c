
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent_map; } ;
struct clk_rcg {TYPE_1__ s; int freq_tbl; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 int _freq_tbl_determine_rate (struct clk_hw*,int ,struct clk_rate_request*,int ) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_determine_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);

 return _freq_tbl_determine_rate(hw, rcg->freq_tbl, req,
     rcg->s.parent_map);
}
