
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ SPUSCHED_TICK ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spusched_task ;
 int spusched_timer ;
 int wake_up_process (int ) ;

__attribute__((used)) static void spusched_wake(struct timer_list *unused)
{
 mod_timer(&spusched_timer, jiffies + SPUSCHED_TICK);
 wake_up_process(spusched_task);
}
