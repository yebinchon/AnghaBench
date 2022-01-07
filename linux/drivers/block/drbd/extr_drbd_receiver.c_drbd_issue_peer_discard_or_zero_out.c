
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int sector; } ;
struct drbd_peer_request {int flags; TYPE_1__ i; } ;
struct drbd_device {int dummy; } ;


 int EE_TRIM ;
 int EE_WAS_ERROR ;
 int EE_ZEROOUT ;
 int can_do_reliable_discards (struct drbd_device*) ;
 int drbd_endio_write_sec_final (struct drbd_peer_request*) ;
 scalar_t__ drbd_issue_discard_or_zero_out (struct drbd_device*,int ,int,int) ;

__attribute__((used)) static void drbd_issue_peer_discard_or_zero_out(struct drbd_device *device, struct drbd_peer_request *peer_req)
{




 if (!can_do_reliable_discards(device))
  peer_req->flags |= EE_ZEROOUT;

 if (drbd_issue_discard_or_zero_out(device, peer_req->i.sector,
     peer_req->i.size >> 9, peer_req->flags & (EE_ZEROOUT|EE_TRIM)))
  peer_req->flags |= EE_WAS_ERROR;
 drbd_endio_write_sec_final(peer_req);
}
