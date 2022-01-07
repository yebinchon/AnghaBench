
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;
struct deadline_data {int zone_lock; struct request** next_rq; } ;


 int READ ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WRITE ;
 int blk_queue_is_zoned (int ) ;
 scalar_t__ blk_req_can_dispatch_to_zone (struct request*) ;
 struct request* deadline_latter_request (struct request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct request *
deadline_next_request(struct deadline_data *dd, int data_dir)
{
 struct request *rq;
 unsigned long flags;

 if (WARN_ON_ONCE(data_dir != READ && data_dir != WRITE))
  return ((void*)0);

 rq = dd->next_rq[data_dir];
 if (!rq)
  return ((void*)0);

 if (data_dir == READ || !blk_queue_is_zoned(rq->q))
  return rq;





 spin_lock_irqsave(&dd->zone_lock, flags);
 while (rq) {
  if (blk_req_can_dispatch_to_zone(rq))
   break;
  rq = deadline_latter_request(rq);
 }
 spin_unlock_irqrestore(&dd->zone_lock, flags);

 return rq;
}
