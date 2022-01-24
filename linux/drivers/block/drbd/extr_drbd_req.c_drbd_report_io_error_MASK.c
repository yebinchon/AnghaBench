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
struct TYPE_3__ {int size; scalar_t__ sector; } ;
struct drbd_request {int rq_state; TYPE_1__ i; } ;
struct drbd_device {TYPE_2__* ldev; } ;
struct TYPE_4__ {int /*<<< orphan*/  backing_bdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int RQ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  drbd_ratelimit_state ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,char*,char*,unsigned long long,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drbd_device *device, struct drbd_request *req)
{
        char b[BDEVNAME_SIZE];

	if (!FUNC0(&drbd_ratelimit_state))
		return;

	FUNC2(device, "local %s IO error sector %llu+%u on %s\n",
			(req->rq_state & RQ_WRITE) ? "WRITE" : "READ",
			(unsigned long long)req->i.sector,
			req->i.size >> 9,
			FUNC1(device->ldev->backing_bdev, b));
}