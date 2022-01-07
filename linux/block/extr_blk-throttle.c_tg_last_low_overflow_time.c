
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_service_queue {int dummy; } ;
struct TYPE_2__ {struct throtl_service_queue* parent_sq; } ;
struct throtl_grp {int ** iops; int ** bps; TYPE_1__ service_queue; } ;


 size_t LIMIT_LOW ;
 size_t READ ;
 size_t WRITE ;
 unsigned long __tg_last_low_overflow_time (struct throtl_grp*) ;
 struct throtl_grp* sq_to_tg (struct throtl_service_queue*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long tg_last_low_overflow_time(struct throtl_grp *tg)
{
 struct throtl_service_queue *parent_sq;
 struct throtl_grp *parent = tg;
 unsigned long ret = __tg_last_low_overflow_time(tg);

 while (1) {
  parent_sq = parent->service_queue.parent_sq;
  parent = sq_to_tg(parent_sq);
  if (!parent)
   break;





  if (!parent->bps[READ][LIMIT_LOW] &&
      !parent->iops[READ][LIMIT_LOW] &&
      !parent->bps[WRITE][LIMIT_LOW] &&
      !parent->iops[WRITE][LIMIT_LOW])
   continue;
  if (time_after(__tg_last_low_overflow_time(parent), ret))
   ret = __tg_last_low_overflow_time(parent);
 }
 return ret;
}
