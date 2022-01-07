
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {int state; int drive_state; int timer_countdown; int gendisk_on; int waitq; int start_queue; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_SR_DRIVE_FAULT ;
 int FIT_SR_DRIVE_SOFT_RESET ;
 int FIT_SR_DRIVE_STATE_MASK ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,int) ;
 int pci_disable_device (TYPE_1__*) ;
 int schedule_work (int *) ;
 int skd_disable_interrupts (struct skd_device*) ;
 int skd_recover_requests (struct skd_device*) ;
 int skd_restart_device (struct skd_device*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void skd_timer_tick_not_online(struct skd_device *skdev)
{
 switch (skdev->state) {
 case 138:
 case 137:
  break;
 case 141:
  dev_dbg(&skdev->pdev->dev,
   "drive busy sanitize[%x], driver[%x]\n",
   skdev->drive_state, skdev->state);



  if (skdev->timer_countdown > 0) {
   skdev->timer_countdown--;
   return;
  }
  skd_recover_requests(skdev);
  break;

 case 144:
 case 142:
 case 143:
  dev_dbg(&skdev->pdev->dev, "busy[%x], countdown=%d\n",
   skdev->state, skdev->timer_countdown);
  if (skdev->timer_countdown > 0) {
   skdev->timer_countdown--;
   return;
  }
  dev_dbg(&skdev->pdev->dev,
   "busy[%x], timedout=%d, restarting device.",
   skdev->state, skdev->timer_countdown);
  skd_restart_device(skdev);
  break;

 case 128:
 case 131:
  if (skdev->timer_countdown > 0) {
   skdev->timer_countdown--;
   return;
  }


  skdev->state = 139;

  dev_err(&skdev->pdev->dev, "DriveFault Connect Timeout (%x)\n",
   skdev->drive_state);



  schedule_work(&skdev->start_queue);
  skdev->gendisk_on = -1;
  wake_up_interruptible(&skdev->waitq);
  break;

 case 136:

  break;

 case 134:
 case 135:
  break;

 case 133:
  if (skdev->timer_countdown > 0) {
   skdev->timer_countdown--;
   return;
  }


  skdev->state = 139;
  dev_err(&skdev->pdev->dev,
   "DriveFault Reconnect Timeout (%x)\n",
   skdev->drive_state);
  if ((skdev->drive_state == FIT_SR_DRIVE_SOFT_RESET) ||
      (skdev->drive_state == FIT_SR_DRIVE_FAULT) ||
      (skdev->drive_state == FIT_SR_DRIVE_STATE_MASK))



   skd_recover_requests(skdev);
  else {
   dev_err(&skdev->pdev->dev, "Disable BusMaster (%x)\n",
    skdev->drive_state);
   pci_disable_device(skdev->pdev);
   skd_disable_interrupts(skdev);
   skd_recover_requests(skdev);
  }



  schedule_work(&skdev->start_queue);
  skdev->gendisk_on = -1;
  wake_up_interruptible(&skdev->waitq);
  break;

 case 132:
 case 130:
 case 129:
 case 139:
 case 140:
 default:
  break;
 }
}
