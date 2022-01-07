
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {unsigned long last_finish_time; unsigned long checked_last_finish_time; int avg_idletime; } ;


 int ktime_get_ns () ;

__attribute__((used)) static void blk_throtl_update_idletime(struct throtl_grp *tg)
{
 unsigned long now = ktime_get_ns() >> 10;
 unsigned long last_finish_time = tg->last_finish_time;

 if (now <= last_finish_time || last_finish_time == 0 ||
     last_finish_time == tg->checked_last_finish_time)
  return;

 tg->avg_idletime = (tg->avg_idletime * 7 + now - last_finish_time) >> 3;
 tg->checked_last_finish_time = last_finish_time;
}
