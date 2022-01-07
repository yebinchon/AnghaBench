
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_request {int req_pending_master_completion; int tl_requests; } ;
struct TYPE_3__ {int worker; int wq; int writes; } ;
struct drbd_device {int al_wait; TYPE_1__ submit; TYPE_2__* resource; int * pending_master_completion; } ;
struct TYPE_4__ {int req_lock; } ;


 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void drbd_queue_write(struct drbd_device *device, struct drbd_request *req)
{
 spin_lock_irq(&device->resource->req_lock);
 list_add_tail(&req->tl_requests, &device->submit.writes);
 list_add_tail(&req->req_pending_master_completion,
   &device->pending_master_completion[1 ]);
 spin_unlock_irq(&device->resource->req_lock);
 queue_work(device->submit.wq, &device->submit.worker);

 wake_up(&device->al_wait);
}
