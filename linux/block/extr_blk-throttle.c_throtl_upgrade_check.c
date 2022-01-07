
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct throtl_grp {unsigned long last_check_time; TYPE_1__* td; } ;
struct TYPE_3__ {scalar_t__ limit_index; scalar_t__ throtl_slice; } ;


 scalar_t__ LIMIT_LOW ;
 scalar_t__ __tg_last_low_overflow_time (struct throtl_grp*) ;
 unsigned long jiffies ;
 scalar_t__ throtl_can_upgrade (TYPE_1__*,int *) ;
 int throtl_upgrade_state (TYPE_1__*) ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 int time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static void throtl_upgrade_check(struct throtl_grp *tg)
{
 unsigned long now = jiffies;

 if (tg->td->limit_index != LIMIT_LOW)
  return;

 if (time_after(tg->last_check_time + tg->td->throtl_slice, now))
  return;

 tg->last_check_time = now;

 if (!time_after_eq(now,
      __tg_last_low_overflow_time(tg) + tg->td->throtl_slice))
  return;

 if (throtl_can_upgrade(tg->td, ((void*)0)))
  throtl_upgrade_state(tg->td);
}
