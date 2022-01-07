
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_request {int device; int tl_requests; } ;
struct TYPE_2__ {int worker; int wq; int lock; int writes; } ;


 int dec_ap_bio (int ) ;
 int list_move_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 TYPE_1__ retry ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drbd_restart_request(struct drbd_request *req)
{
 unsigned long flags;
 spin_lock_irqsave(&retry.lock, flags);
 list_move_tail(&req->tl_requests, &retry.writes);
 spin_unlock_irqrestore(&retry.lock, flags);




 dec_ap_bio(req->device);

 queue_work(retry.wq, &retry.worker);
}
