
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ rq_qos; } ;
struct bio {int dummy; } ;


 int BIO_TRACKED ;
 int __rq_qos_throttle (scalar_t__,struct bio*) ;
 int bio_set_flag (struct bio*,int ) ;

__attribute__((used)) static inline void rq_qos_throttle(struct request_queue *q, struct bio *bio)
{




 bio_set_flag(bio, BIO_TRACKED);
 if (q->rq_qos)
  __rq_qos_throttle(q->rq_qos, bio);
}
