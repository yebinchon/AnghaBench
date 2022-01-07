
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm4000_dev {scalar_t__ monitor_running; int timer; int flags; int devq; } ;


 int DEBUGP (int,struct cm4000_dev*,char*) ;
 int LOCK_MONITOR ;
 int del_timer_sync (int *) ;
 int msleep (int) ;
 int test_and_set_bit (int ,void*) ;
 scalar_t__ test_bit (int ,void*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void terminate_monitor(struct cm4000_dev *dev)
{




 DEBUGP(3, dev, "-> terminate_monitor\n");
 wait_event_interruptible(dev->devq,
     test_and_set_bit(LOCK_MONITOR,
        (void *)&dev->flags));






 DEBUGP(5, dev, "Now allow last cycle of monitor!\n");
 while (test_bit(LOCK_MONITOR, (void *)&dev->flags))
  msleep(25);

 DEBUGP(5, dev, "Delete timer\n");
 del_timer_sync(&dev->timer);




 DEBUGP(3, dev, "<- terminate_monitor\n");
}
