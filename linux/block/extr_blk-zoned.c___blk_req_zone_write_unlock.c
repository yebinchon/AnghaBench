
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* q; int rq_flags; } ;
struct TYPE_2__ {scalar_t__ seq_zones_wlock; } ;


 int RQF_ZONE_WRITE_LOCKED ;
 int WARN_ON_ONCE (int) ;
 int blk_rq_zone_no (struct request*) ;
 int test_and_clear_bit (int ,scalar_t__) ;

void __blk_req_zone_write_unlock(struct request *rq)
{
 rq->rq_flags &= ~RQF_ZONE_WRITE_LOCKED;
 if (rq->q->seq_zones_wlock)
  WARN_ON_ONCE(!test_and_clear_bit(blk_rq_zone_no(rq),
       rq->q->seq_zones_wlock));
}
