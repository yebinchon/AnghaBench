
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int dummy; } ;
struct dfll_rate_req {int dummy; } ;
struct clk_rate_request {int rate; } ;
struct clk_hw {int dummy; } ;


 struct tegra_dfll* clk_hw_to_dfll (struct clk_hw*) ;
 int dfll_calculate_rate_request (struct tegra_dfll*,struct dfll_rate_req*,int ) ;

__attribute__((used)) static int dfll_clk_determine_rate(struct clk_hw *hw,
       struct clk_rate_request *clk_req)
{
 struct tegra_dfll *td = clk_hw_to_dfll(hw);
 struct dfll_rate_req req;
 int ret;

 ret = dfll_calculate_rate_request(td, &req, clk_req->rate);
 if (ret)
  return ret;







 return 0;
}
