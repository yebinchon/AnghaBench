
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct skd_device {scalar_t__ state; scalar_t__ drive_state; int lock; int timer; } ;


 scalar_t__ FIT_SR_DRIVE_STATE_MASK ;
 int FIT_STATUS ;
 scalar_t__ HZ ;
 scalar_t__ SKD_DRVR_STATE_FAULT ;
 scalar_t__ SKD_DRVR_STATE_ONLINE ;
 scalar_t__ SKD_READL (struct skd_device*,int ) ;
 struct skd_device* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int skd_isr_fwstate (struct skd_device*) ;
 int skd_timer_tick_not_online (struct skd_device*) ;
 struct skd_device* skdev ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void skd_timer_tick(struct timer_list *t)
{
 struct skd_device *skdev = from_timer(skdev, t, timer);
 unsigned long reqflags;
 u32 state;

 if (skdev->state == SKD_DRVR_STATE_FAULT)



  return;

 spin_lock_irqsave(&skdev->lock, reqflags);

 state = SKD_READL(skdev, FIT_STATUS);
 state &= FIT_SR_DRIVE_STATE_MASK;
 if (state != skdev->drive_state)
  skd_isr_fwstate(skdev);

 if (skdev->state != SKD_DRVR_STATE_ONLINE)
  skd_timer_tick_not_online(skdev);

 mod_timer(&skdev->timer, (jiffies + HZ));

 spin_unlock_irqrestore(&skdev->lock, reqflags);
}
