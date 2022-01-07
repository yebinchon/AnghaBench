
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct owl_composite {int mux_hw; int common; } ;
struct clk_hw {int dummy; } ;


 struct owl_composite* hw_to_owl_comp (struct clk_hw*) ;
 int owl_mux_helper_get_parent (int *,int *) ;

__attribute__((used)) static u8 owl_comp_get_parent(struct clk_hw *hw)
{
 struct owl_composite *comp = hw_to_owl_comp(hw);

 return owl_mux_helper_get_parent(&comp->common, &comp->mux_hw);
}
