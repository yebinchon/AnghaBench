
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__ sector; } ;
struct drbd_request {int rq_state; TYPE_1__ i; } ;
struct drbd_device {TYPE_2__* ldev; } ;
struct TYPE_4__ {int backing_bdev; } ;


 int BDEVNAME_SIZE ;
 int RQ_WRITE ;
 int __ratelimit (int *) ;
 int bdevname (int ,char*) ;
 int drbd_ratelimit_state ;
 int drbd_warn (struct drbd_device*,char*,char*,unsigned long long,int,int ) ;

__attribute__((used)) static void drbd_report_io_error(struct drbd_device *device, struct drbd_request *req)
{
        char b[BDEVNAME_SIZE];

 if (!__ratelimit(&drbd_ratelimit_state))
  return;

 drbd_warn(device, "local %s IO error sector %llu+%u on %s\n",
   (req->rq_state & RQ_WRITE) ? "WRITE" : "READ",
   (unsigned long long)req->i.sector,
   req->i.size >> 9,
   bdevname(device->ldev->backing_bdev, b));
}
