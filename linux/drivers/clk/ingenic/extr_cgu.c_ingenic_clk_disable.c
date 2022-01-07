
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct ingenic_cgu_clk_info {int type; int gate; } ;
struct ingenic_cgu {int lock; struct ingenic_cgu_clk_info* clock_info; } ;
struct clk_hw {int dummy; } ;


 int CGU_CLK_GATE ;
 int ingenic_cgu_gate_set (struct ingenic_cgu*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ingenic_clk* to_ingenic_clk (struct clk_hw*) ;

__attribute__((used)) static void ingenic_clk_disable(struct clk_hw *hw)
{
 struct ingenic_clk *ingenic_clk = to_ingenic_clk(hw);
 struct ingenic_cgu *cgu = ingenic_clk->cgu;
 const struct ingenic_cgu_clk_info *clk_info;
 unsigned long flags;

 clk_info = &cgu->clock_info[ingenic_clk->idx];

 if (clk_info->type & CGU_CLK_GATE) {

  spin_lock_irqsave(&cgu->lock, flags);
  ingenic_cgu_gate_set(cgu, &clk_info->gate, 1);
  spin_unlock_irqrestore(&cgu->lock, flags);
 }
}
