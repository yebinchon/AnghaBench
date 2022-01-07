
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 int __elv_rqhash_del (struct request*) ;
 int elv_rqhash_add (struct request_queue*,struct request*) ;

void elv_rqhash_reposition(struct request_queue *q, struct request *rq)
{
 __elv_rqhash_del(rq);
 elv_rqhash_add(q, rq);
}
