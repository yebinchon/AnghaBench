
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkfront_ring_info {int ring_lock; } ;


 int kick_pending_request_queues_locked (struct blkfront_ring_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kick_pending_request_queues(struct blkfront_ring_info *rinfo)
{
 unsigned long flags;

 spin_lock_irqsave(&rinfo->ring_lock, flags);
 kick_pending_request_queues_locked(rinfo);
 spin_unlock_irqrestore(&rinfo->ring_lock, flags);
}
