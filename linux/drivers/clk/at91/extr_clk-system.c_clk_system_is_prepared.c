
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_system {int id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_SCSR ;
 int AT91_PMC_SR ;
 int is_pck (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_system* to_clk_system (struct clk_hw*) ;

__attribute__((used)) static int clk_system_is_prepared(struct clk_hw *hw)
{
 struct clk_system *sys = to_clk_system(hw);
 unsigned int status;

 regmap_read(sys->regmap, AT91_PMC_SCSR, &status);

 if (!(status & (1 << sys->id)))
  return 0;

 if (!is_pck(sys->id))
  return 1;

 regmap_read(sys->regmap, AT91_PMC_SR, &status);

 return status & (1 << sys->id) ? 1 : 0;
}
