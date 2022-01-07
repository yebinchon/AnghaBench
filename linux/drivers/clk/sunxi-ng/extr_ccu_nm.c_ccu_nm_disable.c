
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nm {int enable; int common; } ;


 void ccu_gate_helper_disable (int *,int ) ;
 struct ccu_nm* hw_to_ccu_nm (struct clk_hw*) ;

__attribute__((used)) static void ccu_nm_disable(struct clk_hw *hw)
{
 struct ccu_nm *nm = hw_to_ccu_nm(hw);

 return ccu_gate_helper_disable(&nm->common, nm->enable);
}
