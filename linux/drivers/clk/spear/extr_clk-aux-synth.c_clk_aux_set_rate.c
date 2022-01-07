
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct clk_aux {scalar_t__ lock; int reg; TYPE_1__* masks; int rtbl_cnt; struct aux_rate_tbl* rtbl; } ;
struct aux_rate_tbl {unsigned long eq; unsigned long xscale; unsigned long yscale; } ;
struct TYPE_2__ {unsigned long eq_sel_mask; unsigned long eq_sel_shift; unsigned long xscale_sel_mask; unsigned long xscale_sel_shift; unsigned long yscale_sel_mask; unsigned long yscale_sel_shift; } ;


 int aux_calc_rate ;
 int clk_round_rate_index (struct clk_hw*,unsigned long,unsigned long,int ,int ,int*) ;
 unsigned long readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_aux* to_clk_aux (struct clk_hw*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int clk_aux_set_rate(struct clk_hw *hw, unsigned long drate,
    unsigned long prate)
{
 struct clk_aux *aux = to_clk_aux(hw);
 struct aux_rate_tbl *rtbl = aux->rtbl;
 unsigned long val, flags = 0;
 int i;

 clk_round_rate_index(hw, drate, prate, aux_calc_rate, aux->rtbl_cnt,
   &i);

 if (aux->lock)
  spin_lock_irqsave(aux->lock, flags);

 val = readl_relaxed(aux->reg) &
  ~(aux->masks->eq_sel_mask << aux->masks->eq_sel_shift);
 val |= (rtbl[i].eq & aux->masks->eq_sel_mask) <<
  aux->masks->eq_sel_shift;
 val &= ~(aux->masks->xscale_sel_mask << aux->masks->xscale_sel_shift);
 val |= (rtbl[i].xscale & aux->masks->xscale_sel_mask) <<
  aux->masks->xscale_sel_shift;
 val &= ~(aux->masks->yscale_sel_mask << aux->masks->yscale_sel_shift);
 val |= (rtbl[i].yscale & aux->masks->yscale_sel_mask) <<
  aux->masks->yscale_sel_shift;
 writel_relaxed(val, aux->reg);

 if (aux->lock)
  spin_unlock_irqrestore(aux->lock, flags);

 return 0;
}
