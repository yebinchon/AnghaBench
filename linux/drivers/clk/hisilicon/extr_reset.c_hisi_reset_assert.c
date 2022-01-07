
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct hisi_reset_controller {int lock; scalar_t__ membase; } ;


 int BIT (unsigned long) ;
 unsigned long HISI_RESET_BIT_MASK ;
 unsigned long HISI_RESET_OFFSET_MASK ;
 unsigned long HISI_RESET_OFFSET_SHIFT ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hisi_reset_controller* to_hisi_reset_controller (struct reset_controller_dev*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int hisi_reset_assert(struct reset_controller_dev *rcdev,
         unsigned long id)
{
 struct hisi_reset_controller *rstc = to_hisi_reset_controller(rcdev);
 unsigned long flags;
 u32 offset, reg;
 u8 bit;

 offset = (id & HISI_RESET_OFFSET_MASK) >> HISI_RESET_OFFSET_SHIFT;
 bit = id & HISI_RESET_BIT_MASK;

 spin_lock_irqsave(&rstc->lock, flags);

 reg = readl(rstc->membase + offset);
 writel(reg | BIT(bit), rstc->membase + offset);

 spin_unlock_irqrestore(&rstc->lock, flags);

 return 0;
}
