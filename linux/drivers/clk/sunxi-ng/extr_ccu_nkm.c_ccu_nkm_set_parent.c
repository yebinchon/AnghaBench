
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct ccu_nkm {int mux; int common; } ;


 int ccu_mux_helper_set_parent (int *,int *,int ) ;
 struct ccu_nkm* hw_to_ccu_nkm (struct clk_hw*) ;

__attribute__((used)) static int ccu_nkm_set_parent(struct clk_hw *hw, u8 index)
{
 struct ccu_nkm *nkm = hw_to_ccu_nkm(hw);

 return ccu_mux_helper_set_parent(&nkm->common, &nkm->mux, index);
}
