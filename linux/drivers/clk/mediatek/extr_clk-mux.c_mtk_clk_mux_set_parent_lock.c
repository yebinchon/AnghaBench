
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mtk_clk_mux {scalar_t__ lock; TYPE_1__* data; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int mux_shift; int mux_ofs; scalar_t__ mux_width; } ;


 int GENMASK (scalar_t__,int ) ;
 int __acquire (scalar_t__) ;
 int __release (scalar_t__) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct mtk_clk_mux* to_mtk_clk_mux (struct clk_hw*) ;

__attribute__((used)) static int mtk_clk_mux_set_parent_lock(struct clk_hw *hw, u8 index)
{
 struct mtk_clk_mux *mux = to_mtk_clk_mux(hw);
 u32 mask = GENMASK(mux->data->mux_width - 1, 0);
 unsigned long flags = 0;

 if (mux->lock)
  spin_lock_irqsave(mux->lock, flags);
 else
  __acquire(mux->lock);

 regmap_update_bits(mux->regmap, mux->data->mux_ofs, mask,
  index << mux->data->mux_shift);

 if (mux->lock)
  spin_unlock_irqrestore(mux->lock, flags);
 else
  __release(mux->lock);

 return 0;
}
