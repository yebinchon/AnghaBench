
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct aoedev {int flags; TYPE_1__ timer; } ;


 int DEVFL_TKILL ;
 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 struct aoedev* from_timer (struct aoedev*,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int timer ;

__attribute__((used)) static void
dummy_timer(struct timer_list *t)
{
 struct aoedev *d;

 d = from_timer(d, t, timer);
 if (d->flags & DEVFL_TKILL)
  return;
 d->timer.expires = jiffies + HZ;
 add_timer(&d->timer);
}
