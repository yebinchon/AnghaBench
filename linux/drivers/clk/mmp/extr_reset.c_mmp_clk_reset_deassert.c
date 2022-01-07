
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct mmp_clk_reset_unit {struct mmp_clk_reset_cell* cells; } ;
struct mmp_clk_reset_cell {scalar_t__ lock; int reg; int bits; } ;


 struct mmp_clk_reset_unit* rcdev_to_unit (struct reset_controller_dev*) ;
 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 int writel (int ,int ) ;

__attribute__((used)) static int mmp_clk_reset_deassert(struct reset_controller_dev *rcdev,
    unsigned long id)
{
 struct mmp_clk_reset_unit *unit = rcdev_to_unit(rcdev);
 struct mmp_clk_reset_cell *cell;
 unsigned long flags = 0;
 u32 val;

 cell = &unit->cells[id];
 if (cell->lock)
  spin_lock_irqsave(cell->lock, flags);

 val = readl(cell->reg);
 val &= ~cell->bits;
 writel(val, cell->reg);

 if (cell->lock)
  spin_unlock_irqrestore(cell->lock, flags);

 return 0;
}
