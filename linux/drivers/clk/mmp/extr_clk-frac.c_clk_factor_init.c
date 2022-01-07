
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmp_clk_factor_masks {int num_shift; int num_mask; int den_shift; int den_mask; } ;
struct mmp_clk_factor {int ftbl_cnt; scalar_t__ lock; int base; TYPE_1__* ftbl; struct mmp_clk_factor_masks* masks; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int den; int num; } ;


 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct mmp_clk_factor* to_clk_factor (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static void clk_factor_init(struct clk_hw *hw)
{
 struct mmp_clk_factor *factor = to_clk_factor(hw);
 struct mmp_clk_factor_masks *masks = factor->masks;
 u32 val, num, den;
 int i;
 unsigned long flags = 0;

 if (factor->lock)
  spin_lock_irqsave(factor->lock, flags);

 val = readl(factor->base);


 num = (val >> masks->num_shift) & masks->num_mask;


 den = (val >> masks->den_shift) & masks->den_mask;

 for (i = 0; i < factor->ftbl_cnt; i++)
  if (den == factor->ftbl[i].den && num == factor->ftbl[i].num)
   break;

 if (i >= factor->ftbl_cnt) {
  val &= ~(masks->num_mask << masks->num_shift);
  val |= (factor->ftbl[0].num & masks->num_mask) <<
   masks->num_shift;

  val &= ~(masks->den_mask << masks->den_shift);
  val |= (factor->ftbl[0].den & masks->den_mask) <<
   masks->den_shift;

  writel(val, factor->base);
 }

 if (factor->lock)
  spin_unlock_irqrestore(factor->lock, flags);
}
