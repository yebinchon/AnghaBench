
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {scalar_t__ fifo_time; int queuelist; } ;


 int deadline_remove_request (struct request_queue*,struct request*) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void dd_merged_requests(struct request_queue *q, struct request *req,
          struct request *next)
{




 if (!list_empty(&req->queuelist) && !list_empty(&next->queuelist)) {
  if (time_before((unsigned long)next->fifo_time,
    (unsigned long)req->fifo_time)) {
   list_move(&req->queuelist, &next->queuelist);
   req->fifo_time = next->fifo_time;
  }
 }




 deadline_remove_request(q, next);
}
