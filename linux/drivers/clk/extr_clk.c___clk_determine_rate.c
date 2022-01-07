
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {scalar_t__ rate; } ;
struct clk_hw {int core; } ;


 int clk_core_round_rate_nolock (int ,struct clk_rate_request*) ;

int __clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
{
 if (!hw) {
  req->rate = 0;
  return 0;
 }

 return clk_core_round_rate_nolock(hw->core, req);
}
