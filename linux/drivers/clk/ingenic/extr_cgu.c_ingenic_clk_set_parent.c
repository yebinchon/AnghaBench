
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct TYPE_2__ {int bits; size_t shift; scalar_t__ reg; } ;
struct ingenic_cgu_clk_info {int type; int* parents; TYPE_1__ mux; } ;
struct ingenic_cgu {int lock; scalar_t__ base; struct ingenic_cgu_clk_info* clock_info; } ;
struct clk_hw {int dummy; } ;


 int BUG_ON (int) ;
 int CGU_CLK_MUX ;
 int EINVAL ;
 size_t GENMASK (int,int ) ;
 size_t readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ingenic_clk* to_ingenic_clk (struct clk_hw*) ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static int ingenic_clk_set_parent(struct clk_hw *hw, u8 idx)
{
 struct ingenic_clk *ingenic_clk = to_ingenic_clk(hw);
 struct ingenic_cgu *cgu = ingenic_clk->cgu;
 const struct ingenic_cgu_clk_info *clk_info;
 unsigned long flags;
 u8 curr_idx, hw_idx, num_poss;
 u32 reg, mask;

 clk_info = &cgu->clock_info[ingenic_clk->idx];

 if (clk_info->type & CGU_CLK_MUX) {






  hw_idx = curr_idx = 0;
  num_poss = 1 << clk_info->mux.bits;
  for (; hw_idx < num_poss; hw_idx++) {
   if (clk_info->parents[hw_idx] == -1)
    continue;
   if (curr_idx == idx)
    break;
   curr_idx++;
  }


  BUG_ON(curr_idx != idx);

  mask = GENMASK(clk_info->mux.bits - 1, 0);
  mask <<= clk_info->mux.shift;

  spin_lock_irqsave(&cgu->lock, flags);


  reg = readl(cgu->base + clk_info->mux.reg);
  reg &= ~mask;
  reg |= hw_idx << clk_info->mux.shift;
  writel(reg, cgu->base + clk_info->mux.reg);

  spin_unlock_irqrestore(&cgu->lock, flags);
  return 0;
 }

 return idx ? -EINVAL : 0;
}
