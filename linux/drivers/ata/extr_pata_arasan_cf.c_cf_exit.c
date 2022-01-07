
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arasan_cf_dev {int clk; TYPE_1__* host; scalar_t__ vbase; } ;
struct TYPE_2__ {int lock; } ;


 int CFHOST_ENB ;
 scalar_t__ OP_MODE ;
 int TRUE_IDE_IRQS ;
 int cf_card_reset (struct arasan_cf_dev*) ;
 int cf_ginterrupt_enable (struct arasan_cf_dev*,int ) ;
 int cf_interrupt_enable (struct arasan_cf_dev*,int ,int ) ;
 int clk_disable_unprepare (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cf_exit(struct arasan_cf_dev *acdev)
{
 unsigned long flags;

 spin_lock_irqsave(&acdev->host->lock, flags);
 cf_ginterrupt_enable(acdev, 0);
 cf_interrupt_enable(acdev, TRUE_IDE_IRQS, 0);
 cf_card_reset(acdev);
 writel(readl(acdev->vbase + OP_MODE) & ~CFHOST_ENB,
   acdev->vbase + OP_MODE);
 spin_unlock_irqrestore(&acdev->host->lock, flags);
 clk_disable_unprepare(acdev->clk);
}
