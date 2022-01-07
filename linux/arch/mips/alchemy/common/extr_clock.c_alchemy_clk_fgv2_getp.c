
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int parent; int reglock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static u8 alchemy_clk_fgv2_getp(struct clk_hw *hw)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);
 unsigned long flags, v;

 spin_lock_irqsave(c->reglock, flags);
 v = c->parent - 1;
 spin_unlock_irqrestore(c->reglock, flags);
 return v;
}
