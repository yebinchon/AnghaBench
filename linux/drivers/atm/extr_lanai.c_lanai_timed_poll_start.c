
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct lanai_dev {TYPE_1__ timer; } ;


 scalar_t__ LANAI_POLL_PERIOD ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int lanai_timed_poll ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void lanai_timed_poll_start(struct lanai_dev *lanai)
{
 timer_setup(&lanai->timer, lanai_timed_poll, 0);
 lanai->timer.expires = jiffies + LANAI_POLL_PERIOD;
 add_timer(&lanai->timer);
}
