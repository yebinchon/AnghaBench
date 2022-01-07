
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm4000_dev {int flags; scalar_t__ monitor_running; } ;


 int DEBUGP (int,struct cm4000_dev*,char*) ;
 int IS_ATR_PRESENT ;
 int IS_ATR_VALID ;
 int clear_bit (int ,int *) ;
 int terminate_monitor (struct cm4000_dev*) ;

__attribute__((used)) static void stop_monitor(struct cm4000_dev *dev)
{
 DEBUGP(3, dev, "-> stop_monitor\n");
 if (dev->monitor_running) {
  DEBUGP(5, dev, "stopping monitor\n");
  terminate_monitor(dev);

  clear_bit(IS_ATR_VALID, &dev->flags);
  clear_bit(IS_ATR_PRESENT, &dev->flags);
 } else
  DEBUGP(5, dev, "monitor already stopped\n");
 DEBUGP(3, dev, "<- stop_monitor\n");
}
