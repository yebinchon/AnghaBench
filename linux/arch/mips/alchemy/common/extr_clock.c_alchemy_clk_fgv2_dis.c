
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int shift; int reglock; scalar_t__ isen; int reg; } ;


 unsigned long alchemy_rdsys (int ) ;
 int alchemy_wrsys (unsigned long,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static void alchemy_clk_fgv2_dis(struct clk_hw *hw)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);
 unsigned long v, flags;

 spin_lock_irqsave(c->reglock, flags);
 v = alchemy_rdsys(c->reg);
 v &= ~(3 << c->shift);
 alchemy_wrsys(v, c->reg);
 c->isen = 0;
 spin_unlock_irqrestore(c->reglock, flags);
}
