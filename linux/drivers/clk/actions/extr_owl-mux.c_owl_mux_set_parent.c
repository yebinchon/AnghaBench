
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct owl_mux {int mux_hw; int common; } ;
struct clk_hw {int dummy; } ;


 struct owl_mux* hw_to_owl_mux (struct clk_hw*) ;
 int owl_mux_helper_set_parent (int *,int *,int ) ;

__attribute__((used)) static int owl_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct owl_mux *mux = hw_to_owl_mux(hw);

 return owl_mux_helper_set_parent(&mux->common, &mux->mux_hw, index);
}
