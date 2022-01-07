
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_system {int id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_SCER ;
 int clk_system_ready (int ,int) ;
 int cpu_relax () ;
 int is_pck (int) ;
 int regmap_write (int ,int ,int) ;
 struct clk_system* to_clk_system (struct clk_hw*) ;

__attribute__((used)) static int clk_system_prepare(struct clk_hw *hw)
{
 struct clk_system *sys = to_clk_system(hw);

 regmap_write(sys->regmap, AT91_PMC_SCER, 1 << sys->id);

 if (!is_pck(sys->id))
  return 0;

 while (!clk_system_ready(sys->regmap, sys->id))
  cpu_relax();

 return 0;
}
