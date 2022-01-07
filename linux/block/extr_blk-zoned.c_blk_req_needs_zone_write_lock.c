
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* q; } ;
struct TYPE_2__ {int seq_zones_wlock; } ;





 scalar_t__ blk_rq_is_passthrough (struct request*) ;
 int blk_rq_zone_is_seq (struct request*) ;
 int req_op (struct request*) ;

bool blk_req_needs_zone_write_lock(struct request *rq)
{
 if (!rq->q->seq_zones_wlock)
  return 0;

 if (blk_rq_is_passthrough(rq))
  return 0;

 switch (req_op(rq)) {
 case 128:
 case 129:
 case 130:
  return blk_rq_zone_is_seq(rq);
 default:
  return 0;
 }
}
