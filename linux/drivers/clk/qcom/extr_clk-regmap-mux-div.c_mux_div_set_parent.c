
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct clk_regmap_mux_div {int div; int * parent_map; } ;
struct clk_hw {int dummy; } ;


 int mux_div_set_src_div (struct clk_regmap_mux_div*,int ,int ) ;
 struct clk_regmap_mux_div* to_clk_regmap_mux_div (struct clk_hw*) ;

__attribute__((used)) static int mux_div_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_regmap_mux_div *md = to_clk_regmap_mux_div(hw);

 return mux_div_set_src_div(md, md->parent_map[index], md->div);
}
