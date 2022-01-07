
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int expires; } ;
struct bt_bmc {TYPE_1__ poll_timer; int queue; } ;


 int add_timer (TYPE_1__*) ;
 struct bt_bmc* bt_bmc ;
 struct bt_bmc* from_timer (int ,struct timer_list*,void (*) (struct timer_list*)) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void poll_timer(struct timer_list *t)
{
 struct bt_bmc *bt_bmc = from_timer(bt_bmc, t, poll_timer);

 bt_bmc->poll_timer.expires += msecs_to_jiffies(500);
 wake_up(&bt_bmc->queue);
 add_timer(&bt_bmc->poll_timer);
}
