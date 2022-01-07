
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_data {int lock; int reg; scalar_t__ offset; } ;
struct reset_controller_dev {int dummy; } ;


 int BIT (scalar_t__) ;
 struct reset_data* rcdev_to_reset_data (struct reset_controller_dev*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int sun4i_a10_display_deassert(struct reset_controller_dev *rcdev,
          unsigned long id)
{
 struct reset_data *data = rcdev_to_reset_data(rcdev);
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(data->lock, flags);

 reg = readl(data->reg);
 writel(reg | BIT(data->offset + id), data->reg);

 spin_unlock_irqrestore(data->lock, flags);

 return 0;
}
