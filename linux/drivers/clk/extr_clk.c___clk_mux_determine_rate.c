
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_mux_determine_rate_flags (struct clk_hw*,struct clk_rate_request*,int ) ;

int __clk_mux_determine_rate(struct clk_hw *hw,
        struct clk_rate_request *req)
{
 return clk_mux_determine_rate_flags(hw, req, 0);
}
