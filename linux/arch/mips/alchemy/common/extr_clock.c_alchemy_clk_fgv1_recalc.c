
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int shift; int reg; } ;


 int alchemy_rdsys (int ) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long alchemy_clk_fgv1_recalc(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);
 unsigned long v = alchemy_rdsys(c->reg) >> (c->shift + 2);

 v = ((v & 0xff) + 1) * 2;
 return parent_rate / v;
}
