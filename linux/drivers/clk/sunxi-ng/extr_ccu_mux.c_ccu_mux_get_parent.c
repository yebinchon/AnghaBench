
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct ccu_mux {int mux; int common; } ;


 int ccu_mux_helper_get_parent (int *,int *) ;
 struct ccu_mux* hw_to_ccu_mux (struct clk_hw*) ;

__attribute__((used)) static u8 ccu_mux_get_parent(struct clk_hw *hw)
{
 struct ccu_mux *cm = hw_to_ccu_mux(hw);

 return ccu_mux_helper_get_parent(&cm->common, &cm->mux);
}
