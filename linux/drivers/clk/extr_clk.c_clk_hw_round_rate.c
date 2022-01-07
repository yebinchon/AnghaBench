
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {unsigned long rate; int max_rate; int min_rate; } ;
struct clk_hw {int core; } ;


 int clk_core_get_boundaries (int ,int *,int *) ;
 int clk_core_round_rate_nolock (int ,struct clk_rate_request*) ;

unsigned long clk_hw_round_rate(struct clk_hw *hw, unsigned long rate)
{
 int ret;
 struct clk_rate_request req;

 clk_core_get_boundaries(hw->core, &req.min_rate, &req.max_rate);
 req.rate = rate;

 ret = clk_core_round_rate_nolock(hw->core, &req);
 if (ret)
  return 0;

 return req.rate;
}
