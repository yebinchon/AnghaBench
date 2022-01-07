
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct ccu_div {int mux; int common; } ;


 int ccu_mux_helper_get_parent (int *,int *) ;
 struct ccu_div* hw_to_ccu_div (struct clk_hw*) ;

__attribute__((used)) static u8 ccu_div_get_parent(struct clk_hw *hw)
{
 struct ccu_div *cd = hw_to_ccu_div(hw);

 return ccu_mux_helper_get_parent(&cd->common, &cd->mux);
}
