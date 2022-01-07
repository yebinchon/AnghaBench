
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int * end_io_data; } ;
struct gendisk {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int HZ ;
 int blk_end_sync_rq ;
 int blk_execute_rq_nowait (struct request_queue*,struct gendisk*,struct request*,int,int ) ;
 unsigned long sysctl_hung_task_timeout_secs ;
 int wait ;
 int wait_for_completion_io (int *) ;
 int wait_for_completion_io_timeout (int *,unsigned long) ;

void blk_execute_rq(struct request_queue *q, struct gendisk *bd_disk,
     struct request *rq, int at_head)
{
 DECLARE_COMPLETION_ONSTACK(wait);
 unsigned long hang_check;

 rq->end_io_data = &wait;
 blk_execute_rq_nowait(q, bd_disk, rq, at_head, blk_end_sync_rq);


 hang_check = sysctl_hung_task_timeout_secs;
 if (hang_check)
  while (!wait_for_completion_io_timeout(&wait, hang_check * (HZ/2)));
 else
  wait_for_completion_io(&wait);
}
