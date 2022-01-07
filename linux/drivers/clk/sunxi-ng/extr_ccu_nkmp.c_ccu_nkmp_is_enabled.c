
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_nkmp {int enable; int common; } ;


 int ccu_gate_helper_is_enabled (int *,int ) ;
 struct ccu_nkmp* hw_to_ccu_nkmp (struct clk_hw*) ;

__attribute__((used)) static int ccu_nkmp_is_enabled(struct clk_hw *hw)
{
 struct ccu_nkmp *nkmp = hw_to_ccu_nkmp(hw);

 return ccu_gate_helper_is_enabled(&nkmp->common, nkmp->enable);
}
