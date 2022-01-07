
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int reglock; scalar_t__ isen; scalar_t__ parent; } ;


 int __alchemy_clk_fgv2_en (struct alchemy_fgcs_clk*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static int alchemy_clk_fgv2_setp(struct clk_hw *hw, u8 index)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);
 unsigned long flags;

 spin_lock_irqsave(c->reglock, flags);
 c->parent = index + 1;
 if (c->isen)
  __alchemy_clk_fgv2_en(c);
 spin_unlock_irqrestore(c->reglock, flags);

 return 0;
}
