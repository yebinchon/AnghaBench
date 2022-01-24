#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xen_blkif_ring {int /*<<< orphan*/  st_ds_req; struct xen_blkif* blkif; } ;
struct TYPE_4__ {scalar_t__ discard_secure; int /*<<< orphan*/  pdevice; struct block_device* bdev; } ;
struct xen_blkif {TYPE_1__ vbd; } ;
struct phys_req {scalar_t__ nr_sects; scalar_t__ sector_number; } ;
struct block_device {int dummy; } ;
struct TYPE_5__ {int flag; int /*<<< orphan*/  id; scalar_t__ nr_sectors; scalar_t__ sector_number; } ;
struct TYPE_6__ {TYPE_2__ discard; } ;
struct blkif_request {int /*<<< orphan*/  operation; TYPE_3__ u; } ;

/* Variables and functions */
 unsigned long BLKDEV_DISCARD_SECURE ; 
 int BLKIF_DISCARD_SECURE ; 
 int BLKIF_RSP_EOPNOTSUPP ; 
 int BLKIF_RSP_ERROR ; 
 int BLKIF_RSP_OKAY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int FUNC0 (struct block_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct xen_blkif_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_blkif*) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_blkif*) ; 
 int FUNC6 (struct phys_req*,struct xen_blkif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct xen_blkif_ring *ring,
				struct blkif_request *req)
{
	int err = 0;
	int status = BLKIF_RSP_OKAY;
	struct xen_blkif *blkif = ring->blkif;
	struct block_device *bdev = blkif->vbd.bdev;
	unsigned long secure;
	struct phys_req preq;

	FUNC4(blkif);

	preq.sector_number = req->u.discard.sector_number;
	preq.nr_sects      = req->u.discard.nr_sectors;

	err = FUNC6(&preq, blkif, REQ_OP_WRITE);
	if (err) {
		FUNC3("access denied: DISCARD [%llu->%llu] on dev=%04x\n",
			preq.sector_number,
			preq.sector_number + preq.nr_sects, blkif->vbd.pdevice);
		goto fail_response;
	}
	ring->st_ds_req++;

	secure = (blkif->vbd.discard_secure &&
		 (req->u.discard.flag & BLKIF_DISCARD_SECURE)) ?
		 BLKDEV_DISCARD_SECURE : 0;

	err = FUNC0(bdev, req->u.discard.sector_number,
				   req->u.discard.nr_sectors,
				   GFP_KERNEL, secure);
fail_response:
	if (err == -EOPNOTSUPP) {
		FUNC2("discard op failed, not supported\n");
		status = BLKIF_RSP_EOPNOTSUPP;
	} else if (err)
		status = BLKIF_RSP_ERROR;

	FUNC1(ring, req->u.discard.id, req->operation, status);
	FUNC5(blkif);
	return err;
}