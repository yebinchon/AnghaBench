
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_pm_cpu {int shift_mux; int mask_mux; int reg_mux; int nb_pm_base; } ;
struct clk_hw {int dummy; } ;


 int armada_3700_pm_dvfs_get_cpu_parent (int ) ;
 scalar_t__ armada_3700_pm_dvfs_is_enabled (int ) ;
 int readl (int ) ;
 struct clk_pm_cpu* to_clk_pm_cpu (struct clk_hw*) ;

__attribute__((used)) static u8 clk_pm_cpu_get_parent(struct clk_hw *hw)
{
 struct clk_pm_cpu *pm_cpu = to_clk_pm_cpu(hw);
 u32 val;

 if (armada_3700_pm_dvfs_is_enabled(pm_cpu->nb_pm_base)) {
  val = armada_3700_pm_dvfs_get_cpu_parent(pm_cpu->nb_pm_base);
 } else {
  val = readl(pm_cpu->reg_mux) >> pm_cpu->shift_mux;
  val &= pm_cpu->mask_mux;
 }

 return val;
}
