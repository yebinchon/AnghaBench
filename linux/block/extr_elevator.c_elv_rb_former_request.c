
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int rb_node; } ;
struct rb_node {int dummy; } ;


 struct request* rb_entry_rq (struct rb_node*) ;
 struct rb_node* rb_prev (int *) ;

struct request *elv_rb_former_request(struct request_queue *q,
          struct request *rq)
{
 struct rb_node *rbprev = rb_prev(&rq->rb_node);

 if (rbprev)
  return rb_entry_rq(rbprev);

 return ((void*)0);
}
