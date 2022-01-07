
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct throtl_grp {struct throtl_data* td; } ;
struct throtl_data {scalar_t__ throtl_slice; scalar_t__ low_upgrade_time; } ;
struct TYPE_6__ {TYPE_1__* blkcg; } ;
struct TYPE_5__ {int children; } ;
struct TYPE_4__ {TYPE_2__ css; } ;


 unsigned long jiffies ;
 int list_empty (int *) ;
 scalar_t__ tg_last_low_overflow_time (struct throtl_grp*) ;
 TYPE_3__* tg_to_blkg (struct throtl_grp*) ;
 int throtl_tg_is_idle (struct throtl_grp*) ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static bool throtl_tg_can_downgrade(struct throtl_grp *tg)
{
 struct throtl_data *td = tg->td;
 unsigned long now = jiffies;





 if (time_after_eq(now, td->low_upgrade_time + td->throtl_slice) &&
     time_after_eq(now, tg_last_low_overflow_time(tg) +
     td->throtl_slice) &&
     (!throtl_tg_is_idle(tg) ||
      !list_empty(&tg_to_blkg(tg)->blkcg->css.children)))
  return 1;
 return 0;
}
