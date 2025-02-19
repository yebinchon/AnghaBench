
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int shift; int reglock; int reg; } ;


 int EINVAL ;
 unsigned long alchemy_calc_div (unsigned long,unsigned long,int,int,unsigned long*) ;
 unsigned long alchemy_rdsys (int ) ;
 int alchemy_wrsys (unsigned long,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static int alchemy_clk_fgv1_setr(struct clk_hw *hw, unsigned long rate,
     unsigned long parent_rate)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);
 unsigned long div, v, flags, ret;
 int sh = c->shift + 2;

 if (!rate || !parent_rate || rate > (parent_rate / 2))
  return -EINVAL;
 ret = alchemy_calc_div(rate, parent_rate, 2, 512, &div);
 spin_lock_irqsave(c->reglock, flags);
 v = alchemy_rdsys(c->reg);
 v &= ~(0xff << sh);
 v |= div << sh;
 alchemy_wrsys(v, c->reg);
 spin_unlock_irqrestore(c->reglock, flags);

 return 0;
}
