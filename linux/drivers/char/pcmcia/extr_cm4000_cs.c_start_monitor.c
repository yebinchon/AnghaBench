
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm4000_dev {int monitor_running; int timer; } ;


 int DEBUGP (int,struct cm4000_dev*,char*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int monitor_card ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void start_monitor(struct cm4000_dev *dev)
{
 DEBUGP(3, dev, "-> start_monitor\n");
 if (!dev->monitor_running) {
  DEBUGP(5, dev, "create, init and add timer\n");
  timer_setup(&dev->timer, monitor_card, 0);
  dev->monitor_running = 1;
  mod_timer(&dev->timer, jiffies);
 } else
  DEBUGP(5, dev, "monitor already running\n");
 DEBUGP(3, dev, "<- start_monitor\n");
}
