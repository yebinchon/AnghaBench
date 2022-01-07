
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_mux_data {int flags; } ;
struct clk_regmap {int dummy; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct clk_regmap_mux_data* clk_get_regmap_mux_data (struct clk_regmap*) ;
 int clk_mux_determine_rate_flags (struct clk_hw*,struct clk_rate_request*,int ) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int clk_regmap_mux_determine_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct clk_regmap_mux_data *mux = clk_get_regmap_mux_data(clk);

 return clk_mux_determine_rate_flags(hw, req, mux->flags);
}
