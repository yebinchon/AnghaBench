
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct clk_aux {TYPE_1__* masks; scalar_t__ lock; int reg; } ;
struct TYPE_2__ {unsigned int eq_sel_shift; unsigned int eq_sel_mask; unsigned int eq1_mask; unsigned int xscale_sel_shift; unsigned int xscale_sel_mask; unsigned int yscale_sel_shift; unsigned int yscale_sel_mask; } ;


 unsigned int readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_aux* to_clk_aux (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_aux_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_aux *aux = to_clk_aux(hw);
 unsigned int num = 1, den = 1, val, eqn;
 unsigned long flags = 0;

 if (aux->lock)
  spin_lock_irqsave(aux->lock, flags);

 val = readl_relaxed(aux->reg);

 if (aux->lock)
  spin_unlock_irqrestore(aux->lock, flags);

 eqn = (val >> aux->masks->eq_sel_shift) & aux->masks->eq_sel_mask;
 if (eqn == aux->masks->eq1_mask)
  den = 2;


 num = (val >> aux->masks->xscale_sel_shift) &
  aux->masks->xscale_sel_mask;


 den *= (val >> aux->masks->yscale_sel_shift) &
  aux->masks->yscale_sel_mask;

 if (!den)
  return 0;

 return (((parent_rate / 10000) * num) / den) * 10000;
}
