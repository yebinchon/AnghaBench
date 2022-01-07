
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_omap_mux {int saved_parent; } ;
struct clk_hw {int dummy; } ;


 int ti_clk_mux_get_parent (struct clk_hw*) ;
 struct clk_omap_mux* to_clk_omap_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_mux_save_context(struct clk_hw *hw)
{
 struct clk_omap_mux *mux = to_clk_omap_mux(hw);

 mux->saved_parent = ti_clk_mux_get_parent(hw);
 return 0;
}
