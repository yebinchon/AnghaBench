
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_pm_cpu {int shift_div; int reg_div; int nb_pm_base; } ;
struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_UP_ULL (int ,unsigned int) ;
 unsigned int armada_3700_pm_dvfs_get_cpu_div (int ) ;
 scalar_t__ armada_3700_pm_dvfs_is_enabled (int ) ;
 unsigned int get_div (int ,int ) ;
 struct clk_pm_cpu* to_clk_pm_cpu (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pm_cpu_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct clk_pm_cpu *pm_cpu = to_clk_pm_cpu(hw);
 unsigned int div;

 if (armada_3700_pm_dvfs_is_enabled(pm_cpu->nb_pm_base))
  div = armada_3700_pm_dvfs_get_cpu_div(pm_cpu->nb_pm_base);
 else
  div = get_div(pm_cpu->reg_div, pm_cpu->shift_div);
 return DIV_ROUND_UP_ULL((u64)parent_rate, div);
}
