
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {int lock; int start_queue; int completion_worker; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int FIT_INT_STATUS_HOST ;
 int FIT_ISH_COMPLETION_POSTED ;
 int IRQ_HANDLED ;
 int SKD_READL (struct skd_device*,int ) ;
 int SKD_WRITEL (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int schedule_work (int *) ;
 int skd_isr_comp_limit ;
 int skd_isr_completion_posted (struct skd_device*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t skd_comp_q(int irq, void *skd_host_data)
{
 struct skd_device *skdev = skd_host_data;
 unsigned long flags;
 int flush_enqueued = 0;
 int deferred;

 spin_lock_irqsave(&skdev->lock, flags);
 dev_dbg(&skdev->pdev->dev, "MSIX = 0x%x\n",
  SKD_READL(skdev, FIT_INT_STATUS_HOST));
 SKD_WRITEL(skdev, FIT_ISH_COMPLETION_POSTED, FIT_INT_STATUS_HOST);
 deferred = skd_isr_completion_posted(skdev, skd_isr_comp_limit,
      &flush_enqueued);
 if (flush_enqueued)
  schedule_work(&skdev->start_queue);

 if (deferred)
  schedule_work(&skdev->completion_worker);
 else if (!flush_enqueued)
  schedule_work(&skdev->start_queue);

 spin_unlock_irqrestore(&skdev->lock, flags);

 return IRQ_HANDLED;
}
