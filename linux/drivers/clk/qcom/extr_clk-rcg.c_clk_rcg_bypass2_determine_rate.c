
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int best_parent_rate; int rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_round_rate (struct clk_hw*,int ) ;

__attribute__((used)) static int clk_rcg_bypass2_determine_rate(struct clk_hw *hw,
    struct clk_rate_request *req)
{
 struct clk_hw *p;

 p = req->best_parent_hw;
 req->best_parent_rate = clk_hw_round_rate(p, req->rate);
 req->rate = req->best_parent_rate;

 return 0;
}
