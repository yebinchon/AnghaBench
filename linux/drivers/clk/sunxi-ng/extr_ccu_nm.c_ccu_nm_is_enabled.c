
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nm {int enable; int common; } ;


 int ccu_gate_helper_is_enabled (int *,int ) ;
 struct ccu_nm* hw_to_ccu_nm (struct clk_hw*) ;

__attribute__((used)) static int ccu_nm_is_enabled(struct clk_hw *hw)
{
 struct ccu_nm *nm = hw_to_ccu_nm(hw);

 return ccu_gate_helper_is_enabled(&nm->common, nm->enable);
}
