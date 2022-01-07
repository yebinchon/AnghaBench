
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nkm {int enable; int common; } ;


 int ccu_gate_helper_is_enabled (int *,int ) ;
 struct ccu_nkm* hw_to_ccu_nkm (struct clk_hw*) ;

__attribute__((used)) static int ccu_nkm_is_enabled(struct clk_hw *hw)
{
 struct ccu_nkm *nkm = hw_to_ccu_nkm(hw);

 return ccu_gate_helper_is_enabled(&nkm->common, nkm->enable);
}
