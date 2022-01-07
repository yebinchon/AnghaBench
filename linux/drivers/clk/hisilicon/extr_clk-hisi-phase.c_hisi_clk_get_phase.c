
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_hisi_phase {int mask; int shift; int reg; } ;


 int hisi_phase_regval_to_degrees (struct clk_hisi_phase*,int) ;
 int readl (int ) ;
 struct clk_hisi_phase* to_clk_hisi_phase (struct clk_hw*) ;

__attribute__((used)) static int hisi_clk_get_phase(struct clk_hw *hw)
{
 struct clk_hisi_phase *phase = to_clk_hisi_phase(hw);
 u32 regval;

 regval = readl(phase->reg);
 regval = (regval & phase->mask) >> phase->shift;

 return hisi_phase_regval_to_degrees(phase, regval);
}
