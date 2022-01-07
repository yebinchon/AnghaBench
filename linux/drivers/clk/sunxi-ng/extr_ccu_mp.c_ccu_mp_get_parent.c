
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct ccu_mp {int mux; int common; } ;


 int ccu_mux_helper_get_parent (int *,int *) ;
 struct ccu_mp* hw_to_ccu_mp (struct clk_hw*) ;

__attribute__((used)) static u8 ccu_mp_get_parent(struct clk_hw *hw)
{
 struct ccu_mp *cmp = hw_to_ccu_mp(hw);

 return ccu_mux_helper_get_parent(&cmp->common, &cmp->mux);
}
