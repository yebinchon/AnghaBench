
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct request_queue {int timeout_work; } ;


 struct request_queue* from_timer (int ,struct timer_list*,int ) ;
 int kblockd_schedule_work (int *) ;
 struct request_queue* q ;
 int timeout ;

__attribute__((used)) static void blk_rq_timed_out_timer(struct timer_list *t)
{
 struct request_queue *q = from_timer(q, t, timeout);

 kblockd_schedule_work(&q->timeout_work);
}
