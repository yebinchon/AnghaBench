
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int * queued; } ;
struct throtl_grp {unsigned long disptime; int flags; struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;


 size_t READ ;
 int THROTL_TG_WAS_EMPTY ;
 size_t WRITE ;
 unsigned long jiffies ;
 unsigned long min (unsigned long,unsigned long) ;
 int tg_may_dispatch (struct throtl_grp*,struct bio*,unsigned long*) ;
 int throtl_dequeue_tg (struct throtl_grp*) ;
 int throtl_enqueue_tg (struct throtl_grp*) ;
 struct bio* throtl_peek_queued (int *) ;

__attribute__((used)) static void tg_update_disptime(struct throtl_grp *tg)
{
 struct throtl_service_queue *sq = &tg->service_queue;
 unsigned long read_wait = -1, write_wait = -1, min_wait = -1, disptime;
 struct bio *bio;

 bio = throtl_peek_queued(&sq->queued[READ]);
 if (bio)
  tg_may_dispatch(tg, bio, &read_wait);

 bio = throtl_peek_queued(&sq->queued[WRITE]);
 if (bio)
  tg_may_dispatch(tg, bio, &write_wait);

 min_wait = min(read_wait, write_wait);
 disptime = jiffies + min_wait;


 throtl_dequeue_tg(tg);
 tg->disptime = disptime;
 throtl_enqueue_tg(tg);


 tg->flags &= ~THROTL_TG_WAS_EMPTY;
}
