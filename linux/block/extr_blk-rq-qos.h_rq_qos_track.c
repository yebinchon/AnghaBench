
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ rq_qos; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;


 int __rq_qos_track (scalar_t__,struct request*,struct bio*) ;

__attribute__((used)) static inline void rq_qos_track(struct request_queue *q, struct request *rq,
    struct bio *bio)
{
 if (q->rq_qos)
  __rq_qos_track(q->rq_qos, rq, bio);
}
