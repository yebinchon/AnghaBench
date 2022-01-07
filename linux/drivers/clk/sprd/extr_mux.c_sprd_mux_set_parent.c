
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_mux {int mux; int common; } ;
struct clk_hw {int dummy; } ;


 struct sprd_mux* hw_to_sprd_mux (struct clk_hw*) ;
 int sprd_mux_helper_set_parent (int *,int *,int ) ;

__attribute__((used)) static int sprd_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct sprd_mux *cm = hw_to_sprd_mux(hw);

 return sprd_mux_helper_set_parent(&cm->common, &cm->mux, index);
}
