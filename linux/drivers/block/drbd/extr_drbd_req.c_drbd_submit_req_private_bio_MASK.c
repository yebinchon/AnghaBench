#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drbd_request {struct bio* private_bio; struct drbd_device* device; } ;
struct drbd_device {TYPE_1__* ldev; } ;
struct bio {int bi_opf; } ;
struct TYPE_2__ {int /*<<< orphan*/  backing_bdev; } ;

/* Variables and functions */
 unsigned int DRBD_FAULT_DT_RA ; 
 unsigned int DRBD_FAULT_DT_RD ; 
 unsigned int DRBD_FAULT_DT_WR ; 
 int EE_TRIM ; 
 int EE_ZEROOUT ; 
 int REQ_NOUNMAP ; 
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_READ ; 
 scalar_t__ REQ_OP_WRITE_ZEROES ; 
 int REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drbd_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*) ; 

__attribute__((used)) static void
FUNC8(struct drbd_request *req)
{
	struct drbd_device *device = req->device;
	struct bio *bio = req->private_bio;
	unsigned int type;

	if (FUNC1(bio) != REQ_OP_READ)
		type = DRBD_FAULT_DT_WR;
	else if (bio->bi_opf & REQ_RAHEAD)
		type = DRBD_FAULT_DT_RA;
	else
		type = DRBD_FAULT_DT_RD;

	FUNC2(bio, device->ldev->backing_bdev);

	/* State may have changed since we grabbed our reference on the
	 * ->ldev member. Double check, and short-circuit to endio.
	 * In case the last activity log transaction failed to get on
	 * stable storage, and this is a WRITE, we may not even submit
	 * this bio. */
	if (FUNC6(device)) {
		if (FUNC3(device, type))
			FUNC0(bio);
		else if (FUNC1(bio) == REQ_OP_WRITE_ZEROES)
			FUNC4(req, EE_ZEROOUT |
			    ((bio->bi_opf & REQ_NOUNMAP) ? 0 : EE_TRIM));
		else if (FUNC1(bio) == REQ_OP_DISCARD)
			FUNC4(req, EE_TRIM);
		else
			FUNC5(bio);
		FUNC7(device);
	} else
		FUNC0(bio);
}