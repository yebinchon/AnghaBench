
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_mux {int flags; } ;
struct clk_hw {int dummy; } ;


 int clk_mux_determine_rate_flags (struct clk_hw*,struct clk_rate_request*,int ) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_mux_determine_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct clk_mux *mux = to_clk_mux(hw);

 return clk_mux_determine_rate_flags(hw, req, mux->flags);
}
