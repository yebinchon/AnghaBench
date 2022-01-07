
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ rq_qos; } ;
struct bio {int dummy; } ;


 int __rq_qos_done_bio (scalar_t__,struct bio*) ;

__attribute__((used)) static inline void rq_qos_done_bio(struct request_queue *q, struct bio *bio)
{
 if (q->rq_qos)
  __rq_qos_done_bio(q->rq_qos, bio);
}
