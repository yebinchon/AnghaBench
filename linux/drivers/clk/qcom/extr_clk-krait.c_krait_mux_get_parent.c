
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct krait_mux_clk {int shift; int mask; int en_mask; int parent_map; int offset; } ;
struct clk_hw {int dummy; } ;


 int clk_mux_val_to_index (struct clk_hw*,int ,int ,int) ;
 int krait_get_l2_indirect_reg (int ) ;
 struct krait_mux_clk* to_krait_mux_clk (struct clk_hw*) ;

__attribute__((used)) static u8 krait_mux_get_parent(struct clk_hw *hw)
{
 struct krait_mux_clk *mux = to_krait_mux_clk(hw);
 u32 sel;

 sel = krait_get_l2_indirect_reg(mux->offset);
 sel >>= mux->shift;
 sel &= mux->mask;
 mux->en_mask = sel;

 return clk_mux_val_to_index(hw, mux->parent_map, 0, sel);
}
