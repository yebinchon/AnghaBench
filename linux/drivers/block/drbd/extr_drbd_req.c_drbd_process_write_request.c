
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int sector; } ;
struct drbd_request {TYPE_2__ i; TYPE_1__* master_bio; struct drbd_device* device; } ;
struct drbd_device {int state; } ;
struct TYPE_3__ {int bi_opf; } ;


 int D_ASSERT (struct drbd_device*,int) ;
 int QUEUE_AS_DRBD_BARRIER ;
 int QUEUE_FOR_NET_WRITE ;
 int QUEUE_FOR_SEND_OOS ;
 int REQ_PREFLUSH ;
 int TO_BE_SENT ;
 int _req_mod (struct drbd_request*,int ) ;
 scalar_t__ drbd_set_out_of_sync (struct drbd_device*,int ,int ) ;
 int drbd_should_do_remote (int ) ;
 int drbd_should_send_out_of_sync (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int drbd_process_write_request(struct drbd_request *req)
{
 struct drbd_device *device = req->device;
 int remote, send_oos;

 remote = drbd_should_do_remote(device->state);
 send_oos = drbd_should_send_out_of_sync(device->state);







 if (unlikely(req->i.size == 0)) {

  D_ASSERT(device, req->master_bio->bi_opf & REQ_PREFLUSH);
  if (remote)
   _req_mod(req, QUEUE_AS_DRBD_BARRIER);
  return remote;
 }

 if (!remote && !send_oos)
  return 0;

 D_ASSERT(device, !(remote && send_oos));

 if (remote) {
  _req_mod(req, TO_BE_SENT);
  _req_mod(req, QUEUE_FOR_NET_WRITE);
 } else if (drbd_set_out_of_sync(device, req->i.sector, req->i.size))
  _req_mod(req, QUEUE_FOR_SEND_OOS);

 return remote;
}
