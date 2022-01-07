
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int rq_flags; TYPE_1__* q; } ;
struct TYPE_2__ {int seq_zones_wlock; } ;


 int RQF_ZONE_WRITE_LOCKED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int blk_rq_zone_no (struct request*) ;
 int test_and_set_bit (int ,int ) ;

void __blk_req_zone_write_lock(struct request *rq)
{
 if (WARN_ON_ONCE(test_and_set_bit(blk_rq_zone_no(rq),
       rq->q->seq_zones_wlock)))
  return;

 WARN_ON_ONCE(rq->rq_flags & RQF_ZONE_WRITE_LOCKED);
 rq->rq_flags |= RQF_ZONE_WRITE_LOCKED;
}
