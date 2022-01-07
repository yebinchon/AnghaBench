
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nm {int enable; int common; } ;


 int ccu_gate_helper_enable (int *,int ) ;
 struct ccu_nm* hw_to_ccu_nm (struct clk_hw*) ;

__attribute__((used)) static int ccu_nm_enable(struct clk_hw *hw)
{
 struct ccu_nm *nm = hw_to_ccu_nm(hw);

 return ccu_gate_helper_enable(&nm->common, nm->enable);
}
