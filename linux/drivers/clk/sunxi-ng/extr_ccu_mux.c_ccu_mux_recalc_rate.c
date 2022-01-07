
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_mux {int mux; int common; } ;


 unsigned long ccu_mux_helper_apply_prediv (int *,int *,int,unsigned long) ;
 struct ccu_mux* hw_to_ccu_mux (struct clk_hw*) ;

__attribute__((used)) static unsigned long ccu_mux_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct ccu_mux *cm = hw_to_ccu_mux(hw);

 return ccu_mux_helper_apply_prediv(&cm->common, &cm->mux, -1,
        parent_rate);
}
