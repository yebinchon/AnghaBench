
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skd_device {int drive_state; int gendisk_on; int lock; TYPE_1__* pdev; int waitq; int start_queue; void* timer_countdown; int state; scalar_t__ last_mtd; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_CONTROL ;
 int FIT_HW_VERSION ;
 int FIT_INT_DEF_MASK ;
 int FIT_INT_MASK_HOST ;
 int FIT_INT_STATUS_HOST ;
 int FIT_MSG_FROM_DEVICE ;
 int FIT_SR_DRIVE_STATE_MASK ;
 int FIT_STATUS ;
 int SKD_DRVR_STATE_BUSY ;
 int SKD_DRVR_STATE_BUSY_ERASE ;
 int SKD_DRVR_STATE_BUSY_SANITIZE ;
 int SKD_DRVR_STATE_STARTING ;
 int SKD_DRVR_STATE_WAIT_BOOT ;
 int SKD_READL (struct skd_device*,int ) ;
 void* SKD_STARTED_BUSY_TIMO ;
 void* SKD_STARTING_TIMO ;
 void* SKD_WAIT_BOOT_TIMO ;
 int SKD_WRITEL (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int schedule_work (int *) ;
 int skd_drive_disappeared (struct skd_device*) ;
 int skd_drive_fault (struct skd_device*) ;
 int skd_enable_interrupts (struct skd_device*) ;
 int skd_soft_reset (struct skd_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void skd_start_device(struct skd_device *skdev)
{
 unsigned long flags;
 u32 sense;
 u32 state;

 spin_lock_irqsave(&skdev->lock, flags);


 SKD_WRITEL(skdev, FIT_INT_DEF_MASK, FIT_INT_STATUS_HOST);

 sense = SKD_READL(skdev, FIT_STATUS);

 dev_dbg(&skdev->pdev->dev, "initial status=0x%x\n", sense);

 state = sense & FIT_SR_DRIVE_STATE_MASK;
 skdev->drive_state = state;
 skdev->last_mtd = 0;

 skdev->state = SKD_DRVR_STATE_STARTING;
 skdev->timer_countdown = SKD_STARTING_TIMO;

 skd_enable_interrupts(skdev);

 switch (skdev->drive_state) {
 case 130:
  dev_err(&skdev->pdev->dev, "Drive offline...\n");
  break;

 case 132:
  dev_dbg(&skdev->pdev->dev, "FIT_SR_DRIVE_FW_BOOTING\n");
  skdev->state = SKD_DRVR_STATE_WAIT_BOOT;
  skdev->timer_countdown = SKD_WAIT_BOOT_TIMO;
  break;

 case 134:
  dev_info(&skdev->pdev->dev, "Start: BUSY_SANITIZE\n");
  skdev->state = SKD_DRVR_STATE_BUSY_SANITIZE;
  skdev->timer_countdown = SKD_STARTED_BUSY_TIMO;
  break;

 case 135:
  dev_info(&skdev->pdev->dev, "Start: BUSY_ERASE\n");
  skdev->state = SKD_DRVR_STATE_BUSY_ERASE;
  skdev->timer_countdown = SKD_STARTED_BUSY_TIMO;
  break;

 case 131:
 case 129:
  skd_soft_reset(skdev);
  break;

 case 136:
  dev_err(&skdev->pdev->dev, "Drive Busy...\n");
  skdev->state = SKD_DRVR_STATE_BUSY;
  skdev->timer_countdown = SKD_STARTED_BUSY_TIMO;
  break;

 case 128:
  dev_err(&skdev->pdev->dev, "drive soft reset in prog\n");
  break;

 case 133:




  skd_drive_fault(skdev);

  dev_dbg(&skdev->pdev->dev, "starting queue\n");
  schedule_work(&skdev->start_queue);
  skdev->gendisk_on = -1;
  wake_up_interruptible(&skdev->waitq);
  break;

 case 0xFF:


  skd_drive_disappeared(skdev);

  dev_dbg(&skdev->pdev->dev,
   "starting queue to error-out reqs\n");
  schedule_work(&skdev->start_queue);
  skdev->gendisk_on = -1;
  wake_up_interruptible(&skdev->waitq);
  break;

 default:
  dev_err(&skdev->pdev->dev, "Start: unknown state %x\n",
   skdev->drive_state);
  break;
 }

 state = SKD_READL(skdev, FIT_CONTROL);
 dev_dbg(&skdev->pdev->dev, "FIT Control Status=0x%x\n", state);

 state = SKD_READL(skdev, FIT_INT_STATUS_HOST);
 dev_dbg(&skdev->pdev->dev, "Intr Status=0x%x\n", state);

 state = SKD_READL(skdev, FIT_INT_MASK_HOST);
 dev_dbg(&skdev->pdev->dev, "Intr Mask=0x%x\n", state);

 state = SKD_READL(skdev, FIT_MSG_FROM_DEVICE);
 dev_dbg(&skdev->pdev->dev, "Msg from Dev=0x%x\n", state);

 state = SKD_READL(skdev, FIT_HW_VERSION);
 dev_dbg(&skdev->pdev->dev, "HW version=0x%x\n", state);

 spin_unlock_irqrestore(&skdev->lock, flags);
}
