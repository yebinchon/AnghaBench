
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nkm {int enable; int common; } ;


 void ccu_gate_helper_disable (int *,int ) ;
 struct ccu_nkm* hw_to_ccu_nkm (struct clk_hw*) ;

__attribute__((used)) static void ccu_nkm_disable(struct clk_hw *hw)
{
 struct ccu_nkm *nkm = hw_to_ccu_nkm(hw);

 return ccu_gate_helper_disable(&nkm->common, nkm->enable);
}
