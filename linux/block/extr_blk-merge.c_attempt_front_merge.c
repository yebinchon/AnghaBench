
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 struct request* attempt_merge (struct request_queue*,struct request*,struct request*) ;
 struct request* elv_former_request (struct request_queue*,struct request*) ;

struct request *attempt_front_merge(struct request_queue *q, struct request *rq)
{
 struct request *prev = elv_former_request(q, rq);

 if (prev)
  return attempt_merge(q, prev, rq);

 return ((void*)0);
}
