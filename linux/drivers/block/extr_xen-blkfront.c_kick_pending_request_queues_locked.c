
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkfront_ring_info {TYPE_1__* dev_info; int ring; } ;
struct TYPE_2__ {int rq; } ;


 int RING_FULL (int *) ;
 int blk_mq_start_stopped_hw_queues (int ,int) ;

__attribute__((used)) static inline void kick_pending_request_queues_locked(struct blkfront_ring_info *rinfo)
{
 if (!RING_FULL(&rinfo->ring))
  blk_mq_start_stopped_hw_queues(rinfo->dev_info->rq, 1);
}
