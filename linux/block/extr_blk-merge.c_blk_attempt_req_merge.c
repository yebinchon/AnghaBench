
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 struct request* attempt_merge (struct request_queue*,struct request*,struct request*) ;
 int blk_put_request (struct request*) ;

int blk_attempt_req_merge(struct request_queue *q, struct request *rq,
     struct request *next)
{
 struct request *free;

 free = attempt_merge(q, rq, next);
 if (free) {
  blk_put_request(free);
  return 1;
 }

 return 0;
}
