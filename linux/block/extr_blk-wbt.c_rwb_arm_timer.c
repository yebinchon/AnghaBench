
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_depth {int scale_step; } ;
struct rq_wb {int cur_win_nsec; int win_nsec; int cb; struct rq_depth rq_depth; } ;


 int blk_stat_activate_nsecs (int ,int) ;
 int div_u64 (int,int ) ;
 int int_sqrt (int) ;

__attribute__((used)) static void rwb_arm_timer(struct rq_wb *rwb)
{
 struct rq_depth *rqd = &rwb->rq_depth;

 if (rqd->scale_step > 0) {






  rwb->cur_win_nsec = div_u64(rwb->win_nsec << 4,
     int_sqrt((rqd->scale_step + 1) << 8));
 } else {




  rwb->cur_win_nsec = rwb->win_nsec;
 }

 blk_stat_activate_nsecs(rwb->cb, rwb->cur_win_nsec);
}
