#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; int /*<<< orphan*/  sector; } ;
struct drbd_request {TYPE_2__* private_bio; TYPE_1__ i; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct drbd_request *req, int flags)
{
	int err = FUNC1(req->device,
				req->i.sector, req->i.size >> 9, flags);
	if (err)
		req->private_bio->bi_status = BLK_STS_IOERR;
	FUNC0(req->private_bio);
}