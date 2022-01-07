
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rb_root {int dummy; } ;
struct drbd_request {int dummy; } ;
struct drbd_device {TYPE_1__* resource; } ;
struct bio_and_error {scalar_t__ bio; } ;
typedef int sector_t ;
typedef enum drbd_req_event { ____Placeholder_drbd_req_event } drbd_req_event ;
struct TYPE_2__ {int req_lock; } ;


 int EIO ;
 int __req_mod (struct drbd_request*,int,struct bio_and_error*) ;
 int complete_master_bio (struct drbd_device*,struct bio_and_error*) ;
 struct drbd_request* find_request (struct drbd_device*,struct rb_root*,int ,int ,int,char const*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
validate_req_change_req_state(struct drbd_device *device, u64 id, sector_t sector,
         struct rb_root *root, const char *func,
         enum drbd_req_event what, bool missing_ok)
{
 struct drbd_request *req;
 struct bio_and_error m;

 spin_lock_irq(&device->resource->req_lock);
 req = find_request(device, root, id, sector, missing_ok, func);
 if (unlikely(!req)) {
  spin_unlock_irq(&device->resource->req_lock);
  return -EIO;
 }
 __req_mod(req, what, &m);
 spin_unlock_irq(&device->resource->req_lock);

 if (m.bio)
  complete_master_bio(device, &m);
 return 0;
}
