
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_service_queue {scalar_t__* nr_queued; } ;
struct throtl_grp {TYPE_1__* td; scalar_t__** iops; scalar_t__** bps; struct throtl_service_queue service_queue; } ;
struct TYPE_2__ {scalar_t__ throtl_slice; } ;


 size_t LIMIT_LOW ;
 size_t READ ;
 size_t WRITE ;
 int jiffies ;
 scalar_t__ tg_last_low_overflow_time (struct throtl_grp*) ;
 scalar_t__ throtl_tg_is_idle (struct throtl_grp*) ;
 scalar_t__ time_after_eq (int ,scalar_t__) ;

__attribute__((used)) static bool throtl_tg_can_upgrade(struct throtl_grp *tg)
{
 struct throtl_service_queue *sq = &tg->service_queue;
 bool read_limit, write_limit;





 read_limit = tg->bps[READ][LIMIT_LOW] || tg->iops[READ][LIMIT_LOW];
 write_limit = tg->bps[WRITE][LIMIT_LOW] || tg->iops[WRITE][LIMIT_LOW];
 if (!read_limit && !write_limit)
  return 1;
 if (read_limit && sq->nr_queued[READ] &&
     (!write_limit || sq->nr_queued[WRITE]))
  return 1;
 if (write_limit && sq->nr_queued[WRITE] &&
     (!read_limit || sq->nr_queued[READ]))
  return 1;

 if (time_after_eq(jiffies,
  tg_last_low_overflow_time(tg) + tg->td->throtl_slice) &&
     throtl_tg_is_idle(tg))
  return 1;
 return 0;
}
