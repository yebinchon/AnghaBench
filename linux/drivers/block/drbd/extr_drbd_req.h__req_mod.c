
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_request {struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct bio_and_error {scalar_t__ bio; } ;
typedef enum drbd_req_event { ____Placeholder_drbd_req_event } drbd_req_event ;


 int __req_mod (struct drbd_request*,int,struct bio_and_error*) ;
 int complete_master_bio (struct drbd_device*,struct bio_and_error*) ;

__attribute__((used)) static inline int _req_mod(struct drbd_request *req, enum drbd_req_event what)
{
 struct drbd_device *device = req->device;
 struct bio_and_error m;
 int rv;


 rv = __req_mod(req, what, &m);
 if (m.bio)
  complete_master_bio(device, &m);

 return rv;
}
