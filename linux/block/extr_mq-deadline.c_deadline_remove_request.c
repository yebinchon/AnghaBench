
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct request* last_merge; TYPE_1__* elevator; } ;
struct request {int rb_node; int queuelist; } ;
struct deadline_data {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int RB_EMPTY_NODE (int *) ;
 int deadline_del_rq_rb (struct deadline_data*,struct request*) ;
 int elv_rqhash_del (struct request_queue*,struct request*) ;
 int list_del_init (int *) ;

__attribute__((used)) static void deadline_remove_request(struct request_queue *q, struct request *rq)
{
 struct deadline_data *dd = q->elevator->elevator_data;

 list_del_init(&rq->queuelist);




 if (!RB_EMPTY_NODE(&rq->rb_node))
  deadline_del_rq_rb(dd, rq);

 elv_rqhash_del(q, rq);
 if (q->last_merge == rq)
  q->last_merge = ((void*)0);
}
