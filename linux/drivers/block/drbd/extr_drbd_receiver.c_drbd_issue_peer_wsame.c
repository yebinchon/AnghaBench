
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sector; int size; } ;
struct drbd_peer_request {int flags; int pages; TYPE_2__ i; } ;
struct drbd_device {TYPE_1__* ldev; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
struct TYPE_3__ {struct block_device* backing_bdev; } ;


 int EE_WAS_ERROR ;
 int GFP_NOIO ;
 scalar_t__ blkdev_issue_write_same (struct block_device*,int,int,int ,int ) ;
 int drbd_endio_write_sec_final (struct drbd_peer_request*) ;

__attribute__((used)) static void drbd_issue_peer_wsame(struct drbd_device *device,
      struct drbd_peer_request *peer_req)
{
 struct block_device *bdev = device->ldev->backing_bdev;
 sector_t s = peer_req->i.sector;
 sector_t nr = peer_req->i.size >> 9;
 if (blkdev_issue_write_same(bdev, s, nr, GFP_NOIO, peer_req->pages))
  peer_req->flags |= EE_WAS_ERROR;
 drbd_endio_write_sec_final(peer_req);
}
