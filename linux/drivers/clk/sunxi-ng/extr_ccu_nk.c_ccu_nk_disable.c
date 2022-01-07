
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nk {int enable; int common; } ;


 void ccu_gate_helper_disable (int *,int ) ;
 struct ccu_nk* hw_to_ccu_nk (struct clk_hw*) ;

__attribute__((used)) static void ccu_nk_disable(struct clk_hw *hw)
{
 struct ccu_nk *nk = hw_to_ccu_nk(hw);

 return ccu_gate_helper_disable(&nk->common, nk->enable);
}
