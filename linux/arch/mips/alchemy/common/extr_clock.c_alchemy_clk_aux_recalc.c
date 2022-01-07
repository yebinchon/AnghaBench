
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_auxpll_clk {int reg; } ;


 int alchemy_rdsys (int ) ;
 struct alchemy_auxpll_clk* to_auxpll_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long alchemy_clk_aux_recalc(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct alchemy_auxpll_clk *a = to_auxpll_clk(hw);

 return (alchemy_rdsys(a->reg) & 0xff) * parent_rate;
}
