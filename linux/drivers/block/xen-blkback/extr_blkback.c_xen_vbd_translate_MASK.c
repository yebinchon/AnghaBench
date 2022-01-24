#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xen_vbd {int /*<<< orphan*/  bdev; int /*<<< orphan*/  pdevice; scalar_t__ readonly; } ;
struct xen_blkif {struct xen_vbd vbd; } ;
struct phys_req {scalar_t__ nr_sects; scalar_t__ sector_number; int /*<<< orphan*/  bdev; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ blkif_sector_t ;

/* Variables and functions */
 int EACCES ; 
 int REQ_OP_READ ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct xen_vbd*) ; 

__attribute__((used)) static int FUNC3(struct phys_req *req, struct xen_blkif *blkif,
			     int operation)
{
	struct xen_vbd *vbd = &blkif->vbd;
	int rc = -EACCES;

	if ((operation != REQ_OP_READ) && vbd->readonly)
		goto out;

	if (FUNC0(req->nr_sects)) {
		blkif_sector_t end = req->sector_number + req->nr_sects;

		if (FUNC1(end < req->sector_number))
			goto out;
		if (FUNC1(end > FUNC2(vbd)))
			goto out;
	}

	req->dev  = vbd->pdevice;
	req->bdev = vbd->bdev;
	rc = 0;

 out:
	return rc;
}