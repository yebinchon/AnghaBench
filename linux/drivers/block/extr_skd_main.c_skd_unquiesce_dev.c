
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {int state; scalar_t__ drive_state; int gendisk_on; TYPE_1__* pdev; int waitq; int start_queue; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 scalar_t__ FIT_SR_DRIVE_ONLINE ;







 int SKD_DRVR_STATE_ONLINE ;



 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int ,int,int ,int) ;
 int dev_info (int *,char*) ;
 int schedule_work (int *) ;
 int skd_log_skdev (struct skd_device*,char*) ;
 int skd_skdev_state_to_str (int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int skd_unquiesce_dev(struct skd_device *skdev)
{
 int prev_driver_state = skdev->state;

 skd_log_skdev(skdev, "unquiesce");
 if (skdev->state == SKD_DRVR_STATE_ONLINE) {
  dev_dbg(&skdev->pdev->dev, "**** device already ONLINE\n");
  return 0;
 }
 if (skdev->drive_state != FIT_SR_DRIVE_ONLINE) {
  skdev->state = 137;
  dev_dbg(&skdev->pdev->dev, "drive BUSY state\n");
  return 0;
 }





 switch (skdev->state) {
 case 130:
 case 137:
 case 135:
 case 136:
 case 128:
 case 129:
 case 133:
 case 132:
 case 131:
  skdev->state = SKD_DRVR_STATE_ONLINE;
  dev_err(&skdev->pdev->dev, "Driver state %s(%d)=>%s(%d)\n",
   skd_skdev_state_to_str(prev_driver_state),
   prev_driver_state, skd_skdev_state_to_str(skdev->state),
   skdev->state);
  dev_dbg(&skdev->pdev->dev,
   "**** device ONLINE...starting block queue\n");
  dev_dbg(&skdev->pdev->dev, "starting queue\n");
  dev_info(&skdev->pdev->dev, "STEC s1120 ONLINE\n");
  schedule_work(&skdev->start_queue);
  skdev->gendisk_on = 1;
  wake_up_interruptible(&skdev->waitq);
  break;

 case 134:
 default:
  dev_dbg(&skdev->pdev->dev,
   "**** driver state %d, not implemented\n",
   skdev->state);
  return -EBUSY;
 }
 return 0;
}
