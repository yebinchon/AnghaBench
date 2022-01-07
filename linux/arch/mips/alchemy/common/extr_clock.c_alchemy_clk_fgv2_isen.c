
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int shift; int reg; } ;


 int alchemy_rdsys (int ) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static int alchemy_clk_fgv2_isen(struct clk_hw *hw)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);

 return ((alchemy_rdsys(c->reg) >> c->shift) & 3) != 0;
}
