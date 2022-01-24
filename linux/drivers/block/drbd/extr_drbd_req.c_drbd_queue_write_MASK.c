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
struct drbd_request {int /*<<< orphan*/  req_pending_master_completion; int /*<<< orphan*/  tl_requests; } ;
struct TYPE_3__ {int /*<<< orphan*/  worker; int /*<<< orphan*/  wq; int /*<<< orphan*/  writes; } ;
struct drbd_device {int /*<<< orphan*/  al_wait; TYPE_1__ submit; TYPE_2__* resource; int /*<<< orphan*/ * pending_master_completion; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drbd_device *device, struct drbd_request *req)
{
	FUNC2(&device->resource->req_lock);
	FUNC0(&req->tl_requests, &device->submit.writes);
	FUNC0(&req->req_pending_master_completion,
			&device->pending_master_completion[1 /* WRITE */]);
	FUNC3(&device->resource->req_lock);
	FUNC1(device->submit.wq, &device->submit.worker);
	/* do_submit() may sleep internally on al_wait, too */
	FUNC4(&device->al_wait);
}