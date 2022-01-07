
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 scalar_t__ ELV_ON_HASH (struct request*) ;
 int __elv_rqhash_del (struct request*) ;

void elv_rqhash_del(struct request_queue *q, struct request *rq)
{
 if (ELV_ON_HASH(rq))
  __elv_rqhash_del(rq);
}
