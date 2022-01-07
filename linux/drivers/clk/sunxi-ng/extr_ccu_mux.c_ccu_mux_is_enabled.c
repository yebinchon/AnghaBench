
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_mux {int enable; int common; } ;


 int ccu_gate_helper_is_enabled (int *,int ) ;
 struct ccu_mux* hw_to_ccu_mux (struct clk_hw*) ;

__attribute__((used)) static int ccu_mux_is_enabled(struct clk_hw *hw)
{
 struct ccu_mux *cm = hw_to_ccu_mux(hw);

 return ccu_gate_helper_is_enabled(&cm->common, cm->enable);
}
