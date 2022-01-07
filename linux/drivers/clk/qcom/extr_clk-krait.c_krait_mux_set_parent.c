
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct krait_mux_clk {int reparent; int en_mask; int parent_map; } ;
struct clk_hw {int clk; } ;


 scalar_t__ __clk_is_enabled (int ) ;
 int __krait_mux_set_sel (struct krait_mux_clk*,int ) ;
 int clk_mux_index_to_val (int ,int ,int ) ;
 struct krait_mux_clk* to_krait_mux_clk (struct clk_hw*) ;

__attribute__((used)) static int krait_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct krait_mux_clk *mux = to_krait_mux_clk(hw);
 u32 sel;

 sel = clk_mux_index_to_val(mux->parent_map, 0, index);
 mux->en_mask = sel;

 if (__clk_is_enabled(hw->clk))
  __krait_mux_set_sel(mux, sel);

 mux->reparent = 1;

 return 0;
}
