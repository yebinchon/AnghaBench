
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; int deadline; } ;


 scalar_t__ MQ_RQ_IN_FLIGHT ;
 unsigned long READ_ONCE (int ) ;
 int RQF_TIMED_OUT ;
 scalar_t__ blk_mq_rq_state (struct request*) ;
 int jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_after_eq (int ,unsigned long) ;

__attribute__((used)) static bool blk_mq_req_expired(struct request *rq, unsigned long *next)
{
 unsigned long deadline;

 if (blk_mq_rq_state(rq) != MQ_RQ_IN_FLIGHT)
  return 0;
 if (rq->rq_flags & RQF_TIMED_OUT)
  return 0;

 deadline = READ_ONCE(rq->deadline);
 if (time_after_eq(jiffies, deadline))
  return 1;

 if (*next == 0)
  *next = deadline;
 else if (time_after(*next, deadline))
  *next = deadline;
 return 0;
}
