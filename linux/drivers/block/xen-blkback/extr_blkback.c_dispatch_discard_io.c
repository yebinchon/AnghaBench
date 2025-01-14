
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xen_blkif_ring {int st_ds_req; struct xen_blkif* blkif; } ;
struct TYPE_4__ {scalar_t__ discard_secure; int pdevice; struct block_device* bdev; } ;
struct xen_blkif {TYPE_1__ vbd; } ;
struct phys_req {scalar_t__ nr_sects; scalar_t__ sector_number; } ;
struct block_device {int dummy; } ;
struct TYPE_5__ {int flag; int id; scalar_t__ nr_sectors; scalar_t__ sector_number; } ;
struct TYPE_6__ {TYPE_2__ discard; } ;
struct blkif_request {int operation; TYPE_3__ u; } ;


 unsigned long BLKDEV_DISCARD_SECURE ;
 int BLKIF_DISCARD_SECURE ;
 int BLKIF_RSP_EOPNOTSUPP ;
 int BLKIF_RSP_ERROR ;
 int BLKIF_RSP_OKAY ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int REQ_OP_WRITE ;
 int blkdev_issue_discard (struct block_device*,scalar_t__,scalar_t__,int ,unsigned long) ;
 int make_response (struct xen_blkif_ring*,int ,int ,int) ;
 int pr_debug (char*) ;
 int pr_warn (char*,scalar_t__,scalar_t__,int ) ;
 int xen_blkif_get (struct xen_blkif*) ;
 int xen_blkif_put (struct xen_blkif*) ;
 int xen_vbd_translate (struct phys_req*,struct xen_blkif*,int ) ;

__attribute__((used)) static int dispatch_discard_io(struct xen_blkif_ring *ring,
    struct blkif_request *req)
{
 int err = 0;
 int status = BLKIF_RSP_OKAY;
 struct xen_blkif *blkif = ring->blkif;
 struct block_device *bdev = blkif->vbd.bdev;
 unsigned long secure;
 struct phys_req preq;

 xen_blkif_get(blkif);

 preq.sector_number = req->u.discard.sector_number;
 preq.nr_sects = req->u.discard.nr_sectors;

 err = xen_vbd_translate(&preq, blkif, REQ_OP_WRITE);
 if (err) {
  pr_warn("access denied: DISCARD [%llu->%llu] on dev=%04x\n",
   preq.sector_number,
   preq.sector_number + preq.nr_sects, blkif->vbd.pdevice);
  goto fail_response;
 }
 ring->st_ds_req++;

 secure = (blkif->vbd.discard_secure &&
   (req->u.discard.flag & BLKIF_DISCARD_SECURE)) ?
   BLKDEV_DISCARD_SECURE : 0;

 err = blkdev_issue_discard(bdev, req->u.discard.sector_number,
       req->u.discard.nr_sectors,
       GFP_KERNEL, secure);
fail_response:
 if (err == -EOPNOTSUPP) {
  pr_debug("discard op failed, not supported\n");
  status = BLKIF_RSP_EOPNOTSUPP;
 } else if (err)
  status = BLKIF_RSP_ERROR;

 make_response(ring, req->u.discard.id, req->operation, status);
 xen_blkif_put(blkif);
 return err;
}
