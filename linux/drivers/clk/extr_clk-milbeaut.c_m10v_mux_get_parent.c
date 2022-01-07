
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_mux {int shift; int mask; int flags; int table; int reg; } ;
struct clk_hw {int dummy; } ;


 int clk_mux_val_to_index (struct clk_hw*,int ,int ,int) ;
 int readl (int ) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;

__attribute__((used)) static u8 m10v_mux_get_parent(struct clk_hw *hw)
{
 struct clk_mux *mux = to_clk_mux(hw);
 u32 val;

 val = readl(mux->reg) >> mux->shift;
 val &= mux->mask;

 return clk_mux_val_to_index(hw, mux->table, mux->flags, val);
}
