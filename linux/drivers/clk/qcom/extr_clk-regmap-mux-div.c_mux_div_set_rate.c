
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_mux_div {int src; } ;
struct clk_hw {int dummy; } ;


 int __mux_div_set_rate_and_parent (struct clk_hw*,unsigned long,unsigned long,int ) ;
 struct clk_regmap_mux_div* to_clk_regmap_mux_div (struct clk_hw*) ;

__attribute__((used)) static int mux_div_set_rate(struct clk_hw *hw,
       unsigned long rate, unsigned long prate)
{
 struct clk_regmap_mux_div *md = to_clk_regmap_mux_div(hw);

 return __mux_div_set_rate_and_parent(hw, rate, prate, md->src);
}
