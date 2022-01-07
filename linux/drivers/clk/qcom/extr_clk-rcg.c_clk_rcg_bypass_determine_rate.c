
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct freq_tbl {int src; } ;
struct TYPE_2__ {int parent_map; } ;
struct clk_rcg {TYPE_1__ s; struct freq_tbl* freq_tbl; } ;
struct clk_rate_request {int best_parent_rate; int rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 int clk_hw_round_rate (struct clk_hw*,int ) ;
 int qcom_find_src_index (struct clk_hw*,int ,int ) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_bypass_determine_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 const struct freq_tbl *f = rcg->freq_tbl;
 struct clk_hw *p;
 int index = qcom_find_src_index(hw, rcg->s.parent_map, f->src);

 req->best_parent_hw = p = clk_hw_get_parent_by_index(hw, index);
 req->best_parent_rate = clk_hw_round_rate(p, req->rate);
 req->rate = req->best_parent_rate;

 return 0;
}
