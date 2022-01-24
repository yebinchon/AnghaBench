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
struct request_queue {int dummy; } ;
struct drbd_request {int /*<<< orphan*/  start_jif; int /*<<< orphan*/  master_bio; } ;
struct drbd_device {TYPE_1__* vdisk; struct request_queue* rq_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drbd_device *device, struct drbd_request *req)
{
	struct request_queue *q = device->rq_queue;

	FUNC1(q, FUNC0(req->master_bio),
			    &device->vdisk->part0, req->start_jif);
}