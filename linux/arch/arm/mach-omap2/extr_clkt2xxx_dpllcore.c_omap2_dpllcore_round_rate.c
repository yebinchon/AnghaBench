
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int dpll_speed; } ;


 scalar_t__ CORE_CLK_SRC_DPLL ;
 TYPE_1__* curr_prcm_set ;
 scalar_t__ omap2xxx_cm_get_core_clk_src () ;

__attribute__((used)) static long omap2_dpllcore_round_rate(unsigned long target_rate)
{
 u32 high, low, core_clk_src;

 core_clk_src = omap2xxx_cm_get_core_clk_src();

 if (core_clk_src == CORE_CLK_SRC_DPLL) {
  high = curr_prcm_set->dpll_speed * 2;
  low = curr_prcm_set->dpll_speed;
 } else {
  high = curr_prcm_set->dpll_speed;
  low = curr_prcm_set->dpll_speed / 2;
 }







 if (target_rate > low)
  return high;
 else
  return low;


}
