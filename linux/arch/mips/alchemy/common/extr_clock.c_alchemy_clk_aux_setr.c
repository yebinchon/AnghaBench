
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_auxpll_clk {unsigned long maxmult; int reg; } ;


 int EINVAL ;
 int alchemy_wrsys (unsigned long,int ) ;
 struct alchemy_auxpll_clk* to_auxpll_clk (struct clk_hw*) ;

__attribute__((used)) static int alchemy_clk_aux_setr(struct clk_hw *hw,
    unsigned long rate,
    unsigned long parent_rate)
{
 struct alchemy_auxpll_clk *a = to_auxpll_clk(hw);
 unsigned long d = rate;

 if (rate)
  d /= parent_rate;
 else
  d = 0;


 if (((d < 7) && (d != 0)) || (d > a->maxmult))
  return -EINVAL;

 alchemy_wrsys(d, a->reg);
 return 0;
}
