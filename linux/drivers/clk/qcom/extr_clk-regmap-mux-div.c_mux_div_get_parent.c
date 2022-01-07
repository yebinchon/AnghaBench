
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct clk_regmap_mux_div {size_t* parent_map; } ;
struct clk_hw {int dummy; } ;


 char* clk_hw_get_name (struct clk_hw*) ;
 size_t clk_hw_get_num_parents (struct clk_hw*) ;
 int mux_div_get_src_div (struct clk_regmap_mux_div*,size_t*,size_t*) ;
 int pr_err (char*,char const*,size_t) ;
 struct clk_regmap_mux_div* to_clk_regmap_mux_div (struct clk_hw*) ;

__attribute__((used)) static u8 mux_div_get_parent(struct clk_hw *hw)
{
 struct clk_regmap_mux_div *md = to_clk_regmap_mux_div(hw);
 const char *name = clk_hw_get_name(hw);
 u32 i, div, src = 0;

 mux_div_get_src_div(md, &src, &div);

 for (i = 0; i < clk_hw_get_num_parents(hw); i++)
  if (src == md->parent_map[i])
   return i;

 pr_err("%s: Can't find parent with src %d\n", name, src);
 return 0;
}
